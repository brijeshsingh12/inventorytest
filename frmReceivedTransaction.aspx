<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmGoodsReceived, Root" %>

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
            <br />
            <asp:Panel ID="Panel2" runat="server" GroupingText="Goods Received">
                <asp:Panel ID="Panel3" runat="server">
                </asp:Panel>
                <br />
                <table class="table">
                    <tr>
                        <td>
                            <table class="table">
                                <tr valign="top">
                                    <td class="lbldiv">
                                        Select PO No:
                                    </td>
                                    <td class="style1">
                                        <asp:DropDownList ID="dropPONO" runat="server" AppendDataBoundItems="True" 
                                            AutoPostBack="True" CssClass="dropdownlist" 
                                            OnSelectedIndexChanged="dropPONO_SelectedIndexChanged">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                            ControlToValidate="dropPONO" Display="Dynamic" ErrorMessage="Select PO No" 
                                            InitialValue="Select" ></asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td  class="lbldiv">
                                        Recieve Date:
                                    </td>
                                    <td class="style2">
                                        <asp:TextBox ID="txtReceiveDate" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="txtReceiveDate_CalendarExtender" runat="server" 
                                            Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtReceiveDate">
                                        </asp:CalendarExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                            ControlToValidate="txtReceiveDate" Display="Dynamic" 
                                            ErrorMessage="Enter Receive Date" ></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr valign="top">
                                    <td  class="lbldiv">
                                        Receiver Name:
                                    </td>
                                    <td class="style1">
                                        <asp:DropDownList ID="dropReceiverName" runat="server" CssClass="dropdownlist" AppendDataBoundItems="True">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                            ControlToValidate="dropReceiverName" Display="Dynamic" 
                                            ErrorMessage="Select Receiver Name" InitialValue="Select" ></asp:RequiredFieldValidator>
                                    </td>
                                    <td  class="lbldiv">
                                        Carrier Name:
                                    </td>
                                    <td class="style4">
                                        <asp:DropDownList ID="dropShipperName" runat="server" 
                                            AppendDataBoundItems="True" CssClass="dropdownlist">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                            ControlToValidate="dropShipperName" Display="Dynamic" 
                                            ErrorMessage="Select Carrier Name" InitialValue="Select" ></asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr valign="top">
                                    <td  class="lbldiv">
                                        Comment:
                                    </td>
                                    <td class="style1">
                                        <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" 
                                            Height="69px" TextMode="MultiLine" ></asp:TextBox>
                                    </td>
                                    <td class="style6">
                                        &nbsp;
                                    </td>
                                    <td class="style6">
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td style="width: 150px">
                                        &nbsp;
                                    </td>
                                    <td class="style1">
                                        <asp:ImageButton ID="btnSave0" runat="server" ImageUrl="~/images/save_btn.jpg" 
                                            OnClick="btnSave_Click"  />
                                        &nbsp;
                                        <asp:Label ID="msg0" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="center">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                CssClass="mydatagrid" 
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" 
                                RowStyle-CssClass="rows">
                                <Columns>
                                    <asp:BoundField DataField="Itemcode" HeaderText="Item code" />
                                    <asp:BoundField DataField="Item Name" HeaderText="Item Name" />
                                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" />
                                    <asp:TemplateField HeaderText="Quantity Ordered">
                                        <ItemTemplate>
                                            <asp:Label ID="lblQuantityOrder" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="Already Received" HeaderText="Already Received" />
                                    <asp:TemplateField HeaderText="Quantity Received">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtQuantityReceived" runat="server" CssClass="textbox" Text=""></asp:TextBox>
                                            <asp:FilteredTextBoxExtender ID="txtQuantityReceived_FilteredTextBoxExtender" 
                                                runat="server" Enabled="True" FilterType="Numbers" 
                                                TargetControlID="txtQuantityReceived">
                                            </asp:FilteredTextBoxExtender>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                ControlToValidate="txtQuantityReceived" Display="None" 
                                                ErrorMessage="Enter Recieved Quantity" ></asp:RequiredFieldValidator>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Condition">
                                        <ItemTemplate>
                                            <asp:DropDownList ID="dropCondition" runat="server" AppendDataBoundItems="True" 
                                                CssClass="dropdownlist" Width="145px">
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;</td>
                    </tr>
                </table>
            </asp:Panel>
            

            <asp:HiddenField ID="hidForModel" runat="server" />
             <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="hidForModel"
                                PopupControlID="pnlpopup" CancelControlID="cmdNo"
                                BackgroundCssClass="modalBackground">
                            </asp:ModalPopupExtender>


            <asp:Panel ID="pnlpopup" align="center" runat="server" BackColor="White" Height="200px" Width="200px" Style="margin-top: 10px">
                  <table>
                            <tr>
                                <td align="center" colspan="2">
                                      Receiving Quantity exceed from order Quantity. Are you sure !
                                </td>
                            </tr>
                            <tr>
                                <td align="center" colspan="2">
                                    &nbsp; &nbsp; &nbsp;
                                </td>
                            </tr>
                            <tr>
                                <td class="style2">
                                    &nbsp;
                                </td>
                                <td align="center">
                                    <asp:Button ID="cmdYes" runat="server" Text="Yes" OnClick="cmdYes_Click" Width="55px" />
                                    &nbsp;&nbsp;
                                    <asp:Button ID="cmdNo" runat="server" Text="No" Width="55px" OnClick="cmdNo_Click" />
                                </td>
                            </tr>
                        </table>
            </asp:Panel>


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
    </asp:UpdatePanel>
</asp:Content>
