<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmSaleOrderReturn, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .style1
        {
        }
    </style>

     <style type="text/css">
        .black_overlay
        {
            display: none;
            position: absolute;
            top: 0%;
            left: 0%;
            width: 100%;
            height: 1100px;
            background-color: Gray;
            filter: alpha(opacity=80);
            opacity: 0.8;
            -moz-opacity: 0.8;
            z-index: 1;
        }
        .white_content
        {
            display: none;
            position: absolute;
            top: 70%;
            left: 30%;
            padding: 0px;
            border: 0px solid blue;
            background-color: white;
            z-index: 2;
            overflow: auto;
        }
         .style2
         {
             height: 26px;
         }
         </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
  <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="width:100%;">
                <tr>
                    <td width="100%">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Sale Order Return">
                            <table align="center" class="table" style="width: 100%;">
                                <tr align="left">
                                    <td align="left" valign="top">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td align="left" class="style1">
                                                    <table style="width: 100%;">
                                                        <tr>
                                                            <td>
                                                                Sale Order No:
                                                            </td>
                                                            <td>
                                                                <asp:DropDownList ID="dropSONO" runat="server" AppendDataBoundItems="True" 
                                                                    AutoPostBack="True" CssClass="dropdownlist" 
                                                                    OnSelectedIndexChanged="dropSupplier_SelectedIndexChanged" >
                                                                    <asp:ListItem>Select</asp:ListItem>
                                                                </asp:DropDownList>
                                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                    ControlToValidate="dropSONO" Display="Dynamic" 
                                                                    ErrorMessage="Enter Sale Order NO" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Return Date:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="txtReturnDate" runat="server" CssClass="textbox" ></asp:TextBox>
                                                                <asp:CalendarExtender ID="txtReturnDate_CalendarExtender" runat="server" 
                                                                    Enabled="True" TargetControlID="txtReturnDate">
                                                                </asp:CalendarExtender>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Authorization No:
                                                            </td>
                                                            <td style="margin-left: 80px">
                                                                <asp:TextBox ID="txtAuthorizationNo" runat="server" CssClass="textbox" 
                                                                    style="margin-bottom: 0px" ></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Authorization By:
                                                            </td>
                                                            <td style="margin-left: 80px">
                                                                <asp:DropDownList ID="dropAuthorizedBy" runat="server" 
                                                                    AppendDataBoundItems="True" CssClass="dropdownlist" >
                                                                    <asp:ListItem>Select</asp:ListItem>
                                                                </asp:DropDownList>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                Remark:
                                                            </td>
                                                            <td style="margin-left: 80px">
                                                                <asp:TextBox ID="txtRemark" runat="server" CssClass="textbox" Height="58px" 
                                                                    TextMode="MultiLine" ></asp:TextBox>
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                                <td valign="top">
                                                    <table ID="MainTable" runat="server" style="width: 100%; display: none">
                                                        <tr>
                                                            <td>
                                                                Date:
                                                            </td>
                                                            <td>
                                                                <asp:TextBox ID="lblDate" runat="server" ReadOnly="true" CssClass="textbox" style="margin-bottom: 0px" ></asp:TextBox>
                                                           </td>
                                                            <td>
                                                                &nbsp;
                                                            </td>
                                                        </tr>
                                                    </table>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="center" class="style1" colspan="2">
                                                    <asp:ImageButton ID="ImageButton1" runat="server" Height="26px" 
                                                        ImageUrl="~/images/save_btn.jpg" OnClick="ImageButton1_Click" 
                                                        ValidationGroup="A" />
                                                    &nbsp;<asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" 
                                                        BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                                        CellPadding="4" CellSpacing="2" Font-Size="Small" ForeColor="Black" 
                                                        Width="100%">
                                                        <Columns>
                                                            <asp:BoundField DataField="Itemcode" HeaderText="Item code" />
                                                            <asp:BoundField DataField="Quantity" HeaderText="Shipped Qty." />
                                                            <asp:BoundField DataField="Already Return" HeaderText="Already Return" />
                                                            <asp:TemplateField HeaderText="Return Qty.">
                                                                <ItemTemplate>
                                                                    <asp:TextBox ID="txtQuantity" runat="server" AutoPostBack="True" 
                                                                        CssClass="textbox" OnTextChanged="txtQuantity_TextChanged" Text="" Width="78px"></asp:TextBox>
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                            <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" />
                                                            <asp:BoundField DataField="Amount" HeaderText="Amount" />
                                                            <asp:TemplateField HeaderText="Reason">
                                                                <ItemTemplate>
                                                                    <asp:DropDownList ID="dropCondition" runat="server" AppendDataBoundItems="True" 
                                                                        CssClass="dropdownlist" Width="145px">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                    </asp:DropDownList>
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
                                                <td align="center" class="style1" colspan="2">
                                                    &nbsp;<asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td align="left" class="style1" colspan="2">
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" Width="233px" />
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td width="60%">
                        &nbsp;</td>
                    <td valign="top" width="40%">
                        &nbsp;</td>
                </tr>
            </table>
                <div id="Details" class="white_content" runat="server">
                <asp:Panel ID="pnlpopup" align="center" runat="server" Style="margin-top: 10px" BorderColor="#663300"
                    BorderWidth="2px">
                    <div style="margin: 5px 30px 5px 0px; clear: both; width: 304px; font-weight: bold;">
                        <table style="width: 106%;">
                            <tr>
                                <td align="center" colspan="2">
                                    Return Quantity exceed from Ship Quantity. Are you sure !
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
                    </div>
                </asp:Panel>
            </div>
            <div id="Fade" class="black_overlay" runat="server">
            </div>

            </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
