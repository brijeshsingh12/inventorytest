<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmSaleOrder, Root" %>

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
                <table style="width: 100%;">
                    <tr>
                        <td width="60%">
                            <asp:Panel ID="Panel1" runat="server" GroupingText="Create Sale Order">
                                <table style="width: 100%;">
                                    <tr valign="top">
                                        <td class="lbldiv">Sale Order No:       
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtBillNo" runat="server" CssClass="textbox" Enabled="False"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="txtBillNo" Display="Dynamic" ErrorMessage="Enter Bill No"></asp:RequiredFieldValidator>
                                            <br />

                                        </td>
                                        <td class="lbldiv">Date:
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDate" runat="server" CssClass="textbox"></asp:TextBox>
                                            <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server"
                                                Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtDate">
                                            </asp:CalendarExtender>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                ControlToValidate="txtDate" ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td class="lbldiv">Select Customer:
                                        </td>
                                        <td>
                                            <asp:DropDownList ID="dropParty" runat="server" AppendDataBoundItems="True"
                                                AutoPostBack="True" CssClass="dropdownlist"
                                                OnSelectedIndexChanged="dropSupplier_SelectedIndexChanged">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                ControlToValidate="dropParty" Display="Dynamic"
                                                ErrorMessage="Select Agent Code" InitialValue="Select"></asp:RequiredFieldValidator>
                                        </td>
                                        <td class="lbldiv">Delivery Date
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtDeliverDate" runat="server" CssClass="textbox"></asp:TextBox>
                                            <asp:CalendarExtender ID="txtDeliverDate_CalendarExtender" runat="server"
                                                Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtDeliverDate">
                                            </asp:CalendarExtender>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                ControlToValidate="txtDeliverDate" Display="Dynamic"
                                                ErrorMessage="Enter Deliver Date"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td class="lbldiv">Remark
                                        </td>
                                        <td class="style1">
                                            <asp:TextBox ID="txtRemark" runat="server" CssClass="textbox" Height="60px"
                                                TextMode="MultiLine"></asp:TextBox>
                                        </td>
                                        <td class="lbldiv">Deliver To:</td>
                                        <td class="style1">
                                            <asp:TextBox ID="txtDeliverTo" runat="server" CssClass="textbox" Height="60px"
                                                TextMode="MultiLine"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDeliverTo" runat="server"
                                                ControlToValidate="txtDeliverTo" Display="Dynamic"
                                                ErrorMessage="Enter Deliver Address"></asp:RequiredFieldValidator>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td align="center" colspan="4">
                                            <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC"
                                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                                                CellSpacing="2" Font-Size="Small" ForeColor="Black" Width="100%">
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                <RowStyle BackColor="White" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                </table>

                                <hr />
                                <h3>Add Item Details</h3>
                                <table class="table" border="1">
                                    <tr>
                                        <td>Items</td>
                                        <td>Actual Price</td>
                                        <td>Discount</td>
                                        <td>Quantity</td>
                                        <td>SGST/CGST (Rate)</td>
                                        <td>Amount
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:DropDownList ID="dropItemCode" runat="server" AppendDataBoundItems="True"
                                                AutoPostBack="True" CssClass="dropdownlist"
                                                OnSelectedIndexChanged="dropItemCode_SelectedIndexChanged" Width="200px">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </td>
                                          <td>
                                            <asp:TextBox ID="lblActualAmount" runat="server" Enabled="False"
                                                CssClass="textbox" Font-Bold="True" ForeColor="Red"
                                                Width="80px">0</asp:TextBox>
                                        </td>
                                         <td>
                                            <asp:TextBox ID="txtDiscount" runat="server" AutoPostBack="True"
                                                CssClass="textbox" Width="80px" OnTextChanged="txtDiscount_TextChanged">0</asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="FilteredTextBoxExtender1"
                                                runat="server" Enabled="True" FilterType="Numbers"
                                                TargetControlID="txtDiscount">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="True"
                                                CssClass="textbox" OnTextChanged="txtQuantity_TextChanged" Width="80px">0</asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txtQuantity_FilteredTextBoxExtender"
                                                runat="server" Enabled="True" FilterType="Numbers"
                                                TargetControlID="txtQuantity">
                                            </asp:FilteredTextBoxExtender>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtSGST" runat="server" BackColor="#999966"
                                                CssClass="textbox" Enabled="False" Font-Bold="True" ForeColor="Red"
                                                Width="100px">0</asp:TextBox>
                                           
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAmount" runat="server" BackColor="#999966"
                                                CssClass="textbox" Enabled="False" Font-Bold="True" ForeColor="#FF3300"
                                                Width="100px">0</asp:TextBox>
                                           
                                        </td>
                                        <td>
                                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" CssClass="button_submit"
                                                Width="64px" />
                                        </td>
                                    </tr>
                                </table>

                                <table class="table">
                                    <tr>
                                        <td colspan="4">
                                            <asp:GridView ID="GridView2" runat="server" BackColor="#CCCCCC"
                                                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                                                CellSpacing="2" Font-Size="Small" ForeColor="Black"
                                                OnSelectedIndexChanged="GridView2_SelectedIndexChanged" Width="100%" OnRowDataBound="GridView2_RowDataBound">
                                                <Columns>
                                                    <asp:TemplateField>
                                                        <ItemTemplate>
                                                            <asp:Button ID="Button2" runat="server" CommandName="Select" CssClass="button_submit" Text="Remove" />
                                                        </ItemTemplate>
                                                    </asp:TemplateField>
                                                </Columns>
                                                <FooterStyle BackColor="#CCCCCC" />
                                                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                <RowStyle BackColor="White" />
                                                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                <SortedAscendingHeaderStyle BackColor="#808080" />
                                                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                <SortedDescendingHeaderStyle BackColor="#383838" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td style="text-align:right">
                                           <b>Grand Total:</b><asp:TextBox ID="txtGrandTotal" runat="server"  Width="200px" Enabled="false" Text="0"  BackColor="Yellow"></asp:TextBox>
                                        </td>
                                    </tr>
                                </table>

                                <div>
                                    <asp:Button ID="ImageButton1" runat="server" Text="Submit" OnClick="ImageButton1_Click" CssClass="button_submit" />
                                    <asp:Button ID="btnCreateReport" runat="server" Text="Create Report" CssClass="button_submit" OnClick="btnCreateReport_Click" />
                                    <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" CssClass="button_submit" OnClick="btnSendEmail_Click" />
                                    <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="button_submit" OnClick="btnReset_Click" />
                                    <br />
                                    <asp:Label ID="lblmsg" runat="server" ForeColor="Red" Font-Size="Medium" Font-Bold="True"></asp:Label>
                                </div>
                            </asp:Panel>
                        </td>
                    </tr>
                </table>
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

        </ContentTemplate>
          <Triggers>
             <asp:PostBackTrigger ControlID="btnCreateReport" />
        </Triggers>
    </asp:UpdatePanel>

</asp:Content>
