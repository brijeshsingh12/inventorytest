<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmGroupMst, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<br />
<div>
 <table class="table" style="width: 30%" align="center">
            <tr>
                <td align="center" class="heading_TD" colspan="2">
                Group Master</td>
            </tr>
            <tr>
                <td>
                    Group Id:
                </td>
                <td class="style2">
                    <asp:TextBox ID="txtGroupId" runat="server" Width="180px" 
                        Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                        ControlToValidate="txtGroupId" Display="Dynamic" 
                        ErrorMessage="Enter Group Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style3">
                    Group Name</td>
                <td class="style4">
                    <asp:TextBox ID="txtGroupName" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtGroupName" Display="Dynamic" 
                        ErrorMessage="Enter Group" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td class="style5">
                    </td>
                <td class="style6">
                    &nbsp;
                    <asp:ImageButton ID="btnAddNew" runat="server" 
                        ImageUrl="~/images/add_new_btn.jpg" onclick="btnAddNew_Click" />
                &nbsp;&nbsp;
                    <asp:ImageButton ID="btnSave" runat="server" 
                        ImageUrl="~/images/save_btn.jpg" onclick="btnSave_Click" 
                        ValidationGroup="A" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                </td>
            </tr>
        </table>
        <br />
         <div align="center">
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal" 
                Width="900px">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" EmptyDataText="Data Not Found"
                    PageSize="5" onpageindexchanging="GridView1_PageIndexChanging"
                    CssClass="mydatagrid" 
                    PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" 
                    RowStyle-CssClass="rows">
                </asp:GridView>
            </asp:Panel>
        </div>
</div>
</asp:Content>

