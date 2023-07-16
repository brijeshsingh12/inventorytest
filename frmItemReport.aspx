<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmItemReport, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Item Report</h2>
    <table style="width: 40%;">
        <tr>
            <td class="lbldiv">Search By:</td>
            <td>
                <asp:RadioButtonList ID="radioOption" runat="server" RepeatDirection="Horizontal"
                                                Width="283px" AutoPostBack="True"
                                                OnSelectedIndexChanged="radioOption_SelectedIndexChanged">
                                                <asp:ListItem Value="1">Category</asp:ListItem>
                                                <asp:ListItem Value="2">Supplier Item</asp:ListItem>
                                            </asp:RadioButtonList>
            </td>
        </tr>
        </table>
      <table class="table">
                                    <tr>
                                        <td align="left" colspan="3">
                                            <div id="DivCategory" runat="server" style="display: none">
                                                <asp:RadioButtonList ID="radioCateogoryOption" runat="server" AutoPostBack="True"
                                                    OnSelectedIndexChanged="radioCateogoryOption_SelectedIndexChanged" RepeatDirection="Horizontal"
                                                    Width="138px">
                                                    <asp:ListItem Value="1">All</asp:ListItem>
                                                    <asp:ListItem Value="2">Single</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:DropDownList ID="dropCategory" runat="server" Visible="False"
                                                    Width="150px">
                                                </asp:DropDownList>
                                                &nbsp;&nbsp;&nbsp;
                                            </div>
                                            <div id="DivSupplierItem" runat="server" style="display: none">
                                                <asp:RadioButtonList ID="radioSupplierOption" runat="server" AutoPostBack="True"
                                                    OnSelectedIndexChanged="radioSupplierOption_SelectedIndexChanged" RepeatDirection="Horizontal"
                                                    Width="138px">
                                                    <asp:ListItem Value="1">All</asp:ListItem>
                                                    <asp:ListItem Value="2">Single</asp:ListItem>
                                                </asp:RadioButtonList>
                                                <asp:DropDownList ID="dropsupplierItem" runat="server" Visible="False"
                                                    Width="150px">
                                                </asp:DropDownList>
                                                <br />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button1" CssClass="button_submit" runat="server" OnClick="Button1_Click" Text="Show" />
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                        <td>&nbsp;
                                        </td>
                                    </tr>
                                </table>
      
    <br />
<div style="width:100%; overflow:scroll;">
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                        EmptyDataText="Data Not Found"
                        OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8"
                        CssClass="mydatagrid"
                        PagerStyle-CssClass="pager"
                        HeaderStyle-CssClass="header"
                        RowStyle-CssClass="rows">
                    </asp:GridView>
</div>
</asp:Content>
