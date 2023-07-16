<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmReasonMst, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>

            <table style="width: 100%;">
                <tr>
                    <td valign="top" width="50%" style="width: 100%">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <asp:ImageButton ID="btnAddNew" runat="server" Height="35px"
                                    ImageUrl="~/images/add_new_btn2.jpg" OnClick="btnAddNew_Click" Width="130px" />
                                <asp:Panel ID="Panel2" runat="server" GroupingText="Reason List">
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="4"
                                        EmptyDataText="Data Not Found"
                                        OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8"
                                        AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand"
                                        CssClass="mydatagrid"
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header"
                                        RowStyle-CssClass="rows">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnEdit" runat="server"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                                        CommandName="Modify" Height="21px" ImageUrl="~/images/edit icon.jpg"
                                                        ToolTip="Modify Item" Width="32px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete">
                                                <ItemTemplate>
                                                    <asp:ImageButton ID="btnDelete" runat="server"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                                        CommandName="Deleted" Height="19px" ImageUrl="~/images/delete icon.jpg"
                                                        OnClientClick="if ( !confirm('Are you sure you want to delete this Reason')) return false;"
                                                        ToolTip="Remove Item" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ReasonId" HeaderText="Reason Id" />
                                            <asp:BoundField DataField="ReasonName" HeaderText="ReasonName" />

                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                &nbsp;&nbsp;
                        <table style="width: 100%;">
                            <tr>
                                <td align="center">
                                    <asp:Panel ID="Panel3" runat="server" GroupingText="Add Reason Details"
                                        Width="443px">
                                        <table align="center" class="table" style="width: 100%">
                                            <tr>
                                                <td class="style2">&nbsp;</td>
                                                <td align="right" class="style1">
                                                    <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="27px"
                                                        ImageUrl="~/images/Back2.jpg" OnClick="btnBack_Click" Width="100px" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Reason Id:
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                        ControlToValidate="txtReasonId" Display="Dynamic"
                                                        ErrorMessage="Enter Reason Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style1">
                                                    <asp:TextBox ID="txtReasonId" runat="server" CssClass="textbox" Enabled="False" ></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Reason Name
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                        ControlToValidate="txtReasonName" Display="Dynamic"
                                                        ErrorMessage="Enter Reason  Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                                <td class="style1" valign="top">
                                                    <asp:TextBox ID="txtReasonName" runat="server" CssClass="textbox"></asp:TextBox>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2">&nbsp;
                                                </td>
                                                <td align="left" class="style1">
                                                    <asp:Button ID="btnSave" runat="server" CssClass="button_submit"
                                                        OnClick="btnsave_Click" Text="Save" ValidationGroup="A" />
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="style2">&nbsp;
                                                </td>
                                                <td class="style1">
                                                    <asp:ValidationSummary ID="ValidationSummary2" runat="server"
                                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                                </td>
                                            </tr>
                                        </table>
                                    </asp:Panel>
                                </td>
                            </tr>
                        </table>
                                <br />
                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
            <br />
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
