<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmCategoryMst, Root" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
   <style type="text/css">
body
{
    margin: 0;
    padding: 0;
    font-family: Arial;
}
.modal
{
    position: fixed;
    z-index: 999;
    height: 100%;
    width: 100%;
    top: 0;
    background-color: Black;
    filter: alpha(opacity=60);
    opacity: 0.6;
    -moz-opacity: 0.8;
}
.center
{
    z-index: 1000;
    margin: 300px auto;
    padding: 10px;
    width: 130px;
    background-color: White;
    border-radius: 10px;
    filter: alpha(opacity=100);
    opacity: 1;
    -moz-opacity: 1;
}
.center img
{
    height: 128px;
    width: 128px;
}
</style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
   
    <table style="width: 100%;">
        <tr>
            <td width="50%" valign="top" style="width: 100%" align="center">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:Panel ID="Panel2" runat="server" GroupingText="Item Category List">
                            <asp:ImageButton ID="btnAddNew" runat="server" Height="35px" 
                                ImageUrl="~/images/add_new_btn2.jpg" onclick="btnAddNew_Click" Width="130px" />
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False"  EmptyDataText="Data Not Found"  PageSize="8" 
                                OnPageIndexChanging="GridView1_PageIndexChanging" 
                                onrowcommand="GridView1_RowCommand"
                                CssClass="mydatagrid" 
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" 
                                RowStyle-CssClass="rows">
                                <Columns>
                                    <asp:TemplateField HeaderText="Edit">
                                        <ItemTemplate>
                                              <asp:HiddenField ID="hidCategoryID" Value='<%# Eval("CategoryId") %>' runat="server" />
                                            <asp:ImageButton ID="btnEdit" runat="server" 
                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                                                CommandName="Modify" Height="21px" ImageUrl="~/images/edit icon.jpg" 
                                                ToolTip="Modify Category" Width="32px" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Delete">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnDelete" runat="server" 
                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                                                CommandName="Deleted" Height="19px" ImageUrl="~/images/delete icon.jpg" 
                                                OnClientClick="if ( !confirm('Are you sure you want to delete this Category?')) return false;" 
                                                ToolTip="Remove Category" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="CategoryName" HeaderText="Category Name" />
                                    <asp:BoundField DataField="CateogoryDescrip" 
                                        HeaderText="Cateogory Description" />
                                </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Add Category" Width="465px">
                            <table align="center" class="table">
                                <tr>
                                    <td align="right" colspan="3">
                                        <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="38px" 
                                            ImageUrl="~/images/Back2.jpg" onclick="btnBack_Click" Width="100px" />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">
                                        Id:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCategoryId" runat="server" CssClass="textbox" 
                                            Enabled="False"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                            ControlToValidate="txtCategoryId" Display="Dynamic" 
                                            ErrorMessage="Enter Category Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" class="lbldiv" >
                                        Name
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtCategoryName" runat="server" 
                                            CssClass="textbox"></asp:TextBox>
                                    </td>
                                    <td>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                            ControlToValidate="txtCategoryName" Display="Dynamic" 
                                            ErrorMessage="Enter Category Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td valign="top" class="lbldiv">
                                        Description:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox" 
                                            Height="41px" TextMode="MultiLine"></asp:TextBox>
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        &nbsp;
                                        <asp:Button ID="btnSave" runat="server" CssClass="button_submit" 
                                            OnClick="btnsave_Click" Text="Save" ValidationGroup="A" />
                                    </td>
                                    <td>
                                        &nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                            ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                    </td>
                                    <td>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </asp:View>
                </asp:MultiView>
             </td>
        </tr>
        </table>

        <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                 <div class="overlay"> 
                     <div class="center">
                <asp:Image ID="imgProgress" ImageUrl="~/asset/loader.gif" runat="server" />
                Please Wait...
                         </div>
                     </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

    </ContentTemplate> 
    </asp:UpdatePanel> 

</asp:Content>
