<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmPurchaseOrderReturn, Root" %>

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
            <table style="width: 100%;">
                <tr>
                    <td width="60%">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Purchase Order Return">
                            <table>
                                <tr valign="top">
                                    <td align="left">
                                        <table>
                                            <tr valign="top">
                                                <td class="lbldiv">Select PO No:
                                                </td>
                                                <td class="style4">
                                                    <asp:DropDownList ID="dropPONO" runat="server" AppendDataBoundItems="True"
                                                        AutoPostBack="True" CssClass="dropdownlist"
                                                        OnSelectedIndexChanged="dropSupplier_SelectedIndexChanged">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                        ControlToValidate="dropPONO" Display="Dynamic" ErrorMessage="Enter PO NO"
                                                        InitialValue="Select"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">PO Creation Date:
                                                </td>
                                                <td class="style4">
                                                    <asp:TextBox ID="lblDate" runat="server" CssClass="textbox"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server"
                                                        ControlToValidate="lblDate" Display="Dynamic"
                                                        ErrorMessage="Enter Date"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Carrier Name:
                                                </td>
                                                <td class="style4">
                                                    <asp:DropDownList ID="dropShipperName" runat="server"
                                                        AppendDataBoundItems="True" AutoPostBack="True" CssClass="dropdownlist"
                                                        OnSelectedIndexChanged="dropShipperName_SelectedIndexChanged">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                        ControlToValidate="dropShipperName" Display="Dynamic"
                                                        ErrorMessage="Enter Shipper" InitialValue="Select"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Enter Receipt No
                                                </td>
                                                <td class="style4">
                                                    <asp:TextBox ID="txtReceiptNo" runat="server" CssClass="textbox"></asp:TextBox>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                        ControlToValidate="txtReceiptNo" Display="Dynamic"
                                                        ErrorMessage="Enter Receipt No"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Authorized Date:
                                                </td>
                                                <td class="style4">
                                                    <asp:TextBox ID="txtAuthorizedDate" runat="server" CssClass="textbox"></asp:TextBox>
                                                    <asp:CalendarExtender ID="txtAuthorizedDate_CalendarExtender" runat="server"
                                                        Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtAuthorizedDate">
                                                    </asp:CalendarExtender>
                                                      <asp:RequiredFieldValidator ID="RequiredFieldValidatorAuthDate" runat="server"
                                                        ControlToValidate="txtAuthorizedDate" Display="Dynamic"
                                                        ErrorMessage="Enter Authorized Date"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Authorized By:
                                                </td>
                                                <td class="style4">
                                                    <asp:DropDownList ID="dropAuthorizedBy" runat="server"
                                                        AppendDataBoundItems="True" CssClass="dropdownlist">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                     <asp:RequiredFieldValidator ID="RequiredFieldValidatorAuthBy" runat="server"
                                                        ControlToValidate="dropAuthorizedBy" Display="Dynamic"
                                                        ErrorMessage="Select Authorize By" InitialValue="Select"></asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Remark
                                                </td>
                                                <td class="style4">
                                                    <asp:TextBox ID="txtRemark" runat="server" CssClass="textbox" Height="58px"
                                                        TextMode="MultiLine"></asp:TextBox>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                                <tr>
                                    <td>&nbsp;<asp:ImageButton ID="ImageButton1" runat="server" Height="26px"
                                        ImageUrl="~/images/save_btn.jpg" OnClick="ImageButton1_Click"/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;
                                                    <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                    </td>
                                    <td>&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False"
                CssClass="mydatagrid"
                PagerStyle-CssClass="pager"
                HeaderStyle-CssClass="header"
                RowStyle-CssClass="rows">
                <Columns>
                    <asp:BoundField DataField="Itemcode" HeaderText="Item code" />
                    <asp:BoundField DataField="Quantity" HeaderText="Received Qty." />
                    <asp:BoundField DataField="Already Return" HeaderText="Already Return" />
                    <asp:TemplateField HeaderText="Return Qty.">
                        <ItemTemplate>
                            <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="True"
                                CssClass="textbox" OnTextChanged="txtQuantity_TextChanged" Text=""></asp:TextBox>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" />
                    <asp:BoundField DataField="Amount" HeaderText="Amount" />
                    <asp:TemplateField HeaderText="Reason">
                        <ItemTemplate>
                            <asp:DropDownList ID="dropReason" runat="server" AppendDataBoundItems="True"
                                CssClass="dropdownlist" Width="145px">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
            </asp:GridView>
            <br />
            <asp:GridView ID="GridShipper" runat="server" BackColor="#CCCCCC"
                BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                CellSpacing="2" Font-Size="Small" ForeColor="Black" Width="743px">
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

            <br />


            <asp:HiddenField ID="hidForModel" runat="server" />
            <asp:ModalPopupExtender ID="ModalPopupExtender1" runat="server" TargetControlID="hidForModel"
                PopupControlID="pnlpopup" CancelControlID="cmdNo"
                BackgroundCssClass="modalBackground">
            </asp:ModalPopupExtender>
            <asp:Panel ID="pnlpopup" align="center" runat="server" BackColor="White" Height="200px" Width="200px" Style="margin-top: 10px">
                <table>
                    <tr>
                        <td align="center" colspan="2">Return Quantity exceed from Receiving Quantity. Are you sure !
                        </td>
                    </tr>
                    <tr>
                        <td align="center" colspan="2">&nbsp; &nbsp; &nbsp;
                        </td>
                    </tr>
                    <tr>
                        <td class="style2">&nbsp;
                        </td>
                        <td align="center">
                            <asp:Button ID="Button1" runat="server" Text="Yes" OnClick="cmdYes_Click" Width="55px" />
                            &nbsp;&nbsp;
                                    <asp:Button ID="Button2" runat="server" Text="No" Width="55px" OnClick="cmdNo_Click" />
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

          <Triggers>
            <asp:PostBackTrigger ControlID="ImageButton1" />
        </Triggers>
    </asp:UpdatePanel>
</asp:Content>
