<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmConditionMst, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 100%;">
        <tr>
            <td valign="top" width="50%" align="center">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Add New Condition">
                    <table class="table" style="width: 100%" align="center">
                        <tr>
                            <td colspan="2">&nbsp;</td>
                        </tr>
                        <tr>
                            <td class="lbldiv">Condition Id:
                            </td>
                            <td>
                                <asp:TextBox ID="txtConditionId" runat="server" Enabled="False" CssClass="textbox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtConditionId"
                                    Display="Dynamic" ErrorMessage="Enter Condition Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="lbldiv">Condition Name
                            </td>
                            <td>
                                <asp:TextBox ID="txtConditionName" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtConditionName"
                                    Display="Dynamic" ErrorMessage="Enter Condition  Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>&nbsp;
                                <asp:ImageButton ID="btnAddNew" runat="server" ImageUrl="~/images/add_new_btn.jpg"
                                    OnClick="btnAddNew_Click" />
                                &nbsp;<asp:ImageButton ID="btnSave" runat="server"
                                    ImageUrl="~/images/save_btn.jpg" OnClick="btnSave_Click"
                                    ValidationGroup="A" />
                            </td>
                        </tr>
                        <tr>
                            <td>&nbsp;
                            </td>
                            <td>
                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                                    ShowSummary="False" ValidationGroup="A" />
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
                <br />
            </td>
            <td valign="top" width="50%" align="center">
                <asp:Panel ID="Panel2" runat="server" GroupingText="Reason List">
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                        EmptyDataText="Data Not Found" PageSize="8"
                        OnPageIndexChanging="GridView1_PageIndexChanging"
                        CssClass="mydatagrid"
                        PagerStyle-CssClass="pager"
                        HeaderStyle-CssClass="header"
                        RowStyle-CssClass="rows">
                    </asp:GridView>
                </asp:Panel>
                <br />
            </td>
        </tr>
    </table>
    <br />
</asp:Content>

