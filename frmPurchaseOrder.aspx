<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmPurchaseOrder, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .modalBackground {
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            -moz-opacity: 0.8;
            -moz-opacity: 0.8;
            z-index: 10000;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div>
                <h3>Create New PO</h3>
                <table class="table">
                    <tr>
                        <td class="lbldiv">Purchase Order No:
                                                        
                        </td>
                        <td>
                            <asp:TextBox ID="txtBillNo" runat="server" CssClass="textbox" Enabled="False"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ControlToValidate="txtBillNo" Display="Dynamic" ErrorMessage="Enter Bill No"
                                ></asp:RequiredFieldValidator>

                        </td>
                        <td class="lbldiv">Date:&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:TextBox ID="txtDate" runat="server" CssClass="textbox"></asp:TextBox>
                            <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server"
                                Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtDate">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="lbldiv">Supplier:&nbsp;&nbsp;
                        </td>
                        <td>
                            <asp:DropDownList ID="dropSupplier" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                OnSelectedIndexChanged="dropSupplier_SelectedIndexChanged"
                                CssClass="dropdownlist">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                            <asp:LinkButton ID="LinkButton1" runat="server">View Supplier</asp:LinkButton>
                            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="LinkButton1"
                                PopupControlID="pnlpopup" CancelControlID="imgBtn_Close"
                                BackgroundCssClass="modalBackground">
                            </asp:ModalPopupExtender>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="dropSupplier"
                                Display="Dynamic" ErrorMessage="Select Supplier" 
                                InitialValue="Select"></asp:RequiredFieldValidator>
                        </td>
                        <td class="lbldiv">Delivery Date:
                        </td>
                        <td>
                            <asp:TextBox ID="txtDeliveryDate" runat="server"
                                CssClass="textbox"></asp:TextBox>
                            <asp:CalendarExtender ID="txtDeliveryDate_CalendarExtender" runat="server" Enabled="True"
                                TargetControlID="txtDeliveryDate" Format="yyyy-MM-dd">
                            </asp:CalendarExtender>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtDeliveryDate"
                                Display="Dynamic" ErrorMessage="Enter Delievery Date"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td class="lbldiv">Remark&nbsp;&nbsp;</td>
                        <td>
                            <asp:TextBox ID="txtRemark" runat="server" Height="58px"
                                TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                        </td>
                        <td class="lbldiv">Delivery To:</td>
                        <td>
                            <asp:TextBox ID="txtDeliverTo" runat="server" Height="58px"
                                TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                        </td>
                    </tr>

                </table>
                <hr />
                <h3>Add Item Details</h3>
                <asp:CheckBox ID="CheckBox1" runat="server" AutoPostBack="True"
                    OnCheckedChanged="CheckBox1_CheckedChanged" Text="All Items" />
                <table class="table" border="1">
                    <tr>
                        <td>Item</td>
                        <td>Quantity
                        </td>
                        <td>Unit Price
                        </td>
                        <td>Amount
                        </td>
                        <td class="style3">&nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <asp:DropDownList ID="dropItemCode" runat="server"
                                AppendDataBoundItems="True" AutoPostBack="True" Width="200px"
                                OnSelectedIndexChanged="dropItemCode_SelectedIndexChanged"
                                CssClass="dropdownlist">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </td>
                        <td>
                            <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="True" Width="200px"
                                OnTextChanged="txtQuantity_TextChanged" CssClass="textbox">0</asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="txtQuantity_FilteredTextBoxExtender" runat="server"
                                Enabled="True" FilterType="Numbers" TargetControlID="txtQuantity">
                            </asp:FilteredTextBoxExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtUnitPrize" Width="200px" runat="server" Enabled="False" CssClass="textbox">0</asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="txtUnitPrize_FilteredTextBoxExtender" runat="server"
                                Enabled="True" FilterType="Numbers" TargetControlID="txtUnitPrize">
                            </asp:FilteredTextBoxExtender>
                        </td>
                        <td>
                            <asp:TextBox ID="txtAmount" Width="200px" runat="server" Enabled="False" CssClass="textbox">0</asp:TextBox>
                            <asp:FilteredTextBoxExtender ID="txtAmount_FilteredTextBoxExtender" runat="server"
                                Enabled="True" FilterType="Numbers" TargetControlID="txtAmount">
                            </asp:FilteredTextBoxExtender>
                        </td>
                        <td class="style3">
                            <asp:Button ID="Button1" runat="server" Text="Add" Width="64px" CssClass="button_submit"
                                OnClick="Button1_Click" />
                        </td>
                    </tr>
                </table>
               
                <table class="table">
                    <tr>
                        <td colspan="4">
                            <asp:GridView ID="GridView2" runat="server" OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
                                CssClass="mydatagrid"
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header"
                                RowStyle-CssClass="rows">
                                <Columns>
                                    <asp:TemplateField>
                                        <ItemTemplate>
                                            <asp:Button ID="Button2" CssClass="button_submit" runat="server" CommandName="Select" Text="Remove" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>
               <%-- <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True" ShowSummary="False"  />--%>
            </div>
             <div>
                    <asp:Button ID="ImageButton1" runat="server" Text="Submit" OnClick="ImageButton1_Click" CssClass="button_submit" />
                    <asp:Button ID="btnCreateReport" runat="server" Text="Create Report" CssClass="button_submit" OnClick="btnCreateReport_Click" />
                  <%--  <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" CssClass="button_submit" OnClick="btnSendEmail_Click" />--%>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="button_submit" OnClick="btnReset_Click" />
                    <br />
                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True"></asp:Label>
             </div>

          <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                 <div class="overlay"> 
                     <div class="center">
                <asp:Image ID="imgProgress" ImageUrl="~/asset/loader.gif" runat="server" />
                         <br />
                Please Wait...
                         </div>
                     </div>
            </ProgressTemplate>
        </asp:UpdateProgress>


            <asp:Panel ID="pnlpopup" align="center" runat="server" BackColor="White"
                Height="500px" Width="793px" Style="margin-top: 10px">
                <div style="width: 790px; text-align: right; clear: both; margin: 2px 2px 10px 0px">
                    <asp:ImageButton ID="imgBtn_Close" runat="server" Width="30" Height="30" ImageUrl="~/Images/hand.jpg" />
                </div>
                &nbsp;<asp:Panel ID="Pnl_JdDetails" runat="server" ScrollBars="Auto">
                    <div style="margin: 5px 30px 10px 0px; width: 792px; height: 25px; background-color: #df5015; color: White; font-weight: bold; text-align: center">
                        Supplier Details with Price List
                    </div>
                    <div>
                        <table class="table">
                            <tr>
                                <td align="center">&nbsp;</td>
                                <td align="center">
                                    <asp:GridView ID="GridQuote" runat="server"
                                        EmptyDataText="Quote Not Exist." CssClass="mydatagrid"
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header"
                                        RowStyle-CssClass="rows">
                                    </asp:GridView>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server"
                                        CssClass="mydatagrid"
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header"
                                        RowStyle-CssClass="rows">
                                    </asp:GridView>
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </div>

                </asp:Panel>
            </asp:Panel>

        </ContentTemplate>
        <Triggers>
            <asp:PostBackTrigger ControlID="dropSupplier" />
             <asp:PostBackTrigger ControlID="btnCreateReport" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>
