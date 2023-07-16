<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmSalesTransaction, Root" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
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
            top: 30%;
            left: 30%;
            padding: 0px;
            border: 0px solid blue;
            background-color: white;
            z-index: 2;
            overflow: auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table align="center" style="width:100%;">
                <tr>
                    <td align="center">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Goods Shipping Transaction">
                            <table style="width:100%;">
                                <tr>
                                    <td>
                                        <table align="center" class="table" style="width: 100%; height: 194px;">
                                            <tr valign="top">
                                                <td align="left" class="lbldiv">
                                                    Sale Order No:
                                                </td>
                                                <td class="style7">
                                                    <asp:DropDownList ID="dropSONO" runat="server" AppendDataBoundItems="True" 
                                                        AutoPostBack="True" CssClass="dropdownlist" 
                                                        OnSelectedIndexChanged="dropSONO_SelectedIndexChanged" Style="margin-left: 0px" 
                                                        >
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                        ControlToValidate="dropSONO" Display="Dynamic" ErrorMessage="Select SO No" 
                                                        InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                    <br />
                                                </td>
                                                <td align="left"  class="lbldiv">
                                                    Ship Date:</td>
                                                <td class="style2">
                                                    <asp:TextBox ID="txtShipDate" runat="server" CssClass="textbox" ></asp:TextBox>
                                                    <asp:CalendarExtender ID="txtShipDate_CalendarExtender" runat="server" 
                                                        Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtShipDate">
                                                    </asp:CalendarExtender>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                        ControlToValidate="txtShipDate" Display="Dynamic" 
                                                        ErrorMessage="Enter ship Date" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td align="left"  class="lbldiv">
                                                    Select Agent
                                                </td>
                                                <td class="style7">
                                                    <asp:DropDownList ID="dropAgent" runat="server" CssClass="dropdownlist" 
                                                        >
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                        ControlToValidate="dropAgent" Display="Dynamic" ErrorMessage="Select Agent" 
                                                        InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td align="left"  class="lbldiv">
                                                    Carrier Name:</td>
                                                <td class="style4">
                                                    <asp:DropDownList ID="dropCarrierName" runat="server" 
                                                        AppendDataBoundItems="True" CssClass="dropdownlist" >
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                        ControlToValidate="dropCarrierName" Display="Dynamic" 
                                                        ErrorMessage="Select Carrier Name" InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td align="left"  class="lbldiv" valign="top">
                                                    Comment:</td>
                                                <td class="style7">
                                                    <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" 
                                                        Height="69px" TextMode="MultiLine" Width="200px"></asp:TextBox>
                                                </td>
                                                <td class="style6">
                                                    &nbsp;</td>
                                                <td class="style6">
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width:150px">
                                                    &nbsp;</td>
                                                <td class="style7">
                                                    <asp:ImageButton ID="btnSave" runat="server" ImageUrl="~/images/save_btn.jpg" 
                                                        onclick="btnSave_Click" ValidationGroup="A" />
                                                    &nbsp;
                                                    <asp:Label ID="msg" runat="server" Font-Bold="True" ForeColor="Red"></asp:Label>
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                            <tr>
                                                <td style="width:150px">
                                                    &nbsp;</td>
                                                <td class="style7">
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                                </td>
                                                <td>
                                                    &nbsp;</td>
                                                <td>
                                                    &nbsp;</td>
                                            </tr>
                                        </table>
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                                            BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" 
                                            CellPadding="4" CellSpacing="2" Font-Size="Small" ForeColor="Black" 
                                            Width="100%">
                                            <Columns>
                                                <asp:BoundField DataField="Itemcode" HeaderText="Item code" />
                                                <asp:BoundField DataField="Item Name" HeaderText="Item Name" />
                                                <asp:BoundField DataField="UnitPrice" HeaderText="UnitPrice" />
                                                <asp:TemplateField HeaderText="Quantity Ordered">
                                                    <ItemTemplate>
                                                        <asp:Label ID="lblQuantityOrder" runat="server" Text='<%# Eval("Quantity") %>'></asp:Label>
                                                    </ItemTemplate>
                                                </asp:TemplateField>
                                                <asp:BoundField DataField="Already Ship" HeaderText="Already Ship" />
                                                <asp:TemplateField HeaderText="Quantity Shipped">
                                                    <ItemTemplate>
                                                        <asp:TextBox ID="txtQuantityShip" runat="server" CssClass="textbox" Text=""></asp:TextBox>
                                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                            ControlToValidate="txtQuantityShip" Display="None" 
                                                            ErrorMessage="Enter Recieved Ship" ValidationGroup="A"></asp:RequiredFieldValidator>
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
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
            <br />

            <div id="Details" class="white_content" runat="server">
                <asp:Panel ID="pnlpopup" align="center" runat="server" Style="margin-top: 10px" BorderColor="#663300"
                    BorderWidth="2px">
                    <div style="margin: 5px 30px 5px 0px; clear: both; width: 310px; font-weight: bold;">
                        <table style="width: 106%;">
                            <tr>
                                <td align="center" colspan="2">
                                      Ship Quantity exceed from order Quantity. Are you sure !
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

