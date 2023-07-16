<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmSubCategoryMst, Root" %>


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
                        <asp:Panel ID="Panel2" runat="server" GroupingText="Create Sub-Category">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AutoGenerateColumns="False"  EmptyDataText="Data Not Found"  PageSize="8" 
                                onrowcommand="GridView1_RowCommand"
                                CssClass="mydatagrid" 
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" 
                                RowStyle-CssClass="rows">
                                <Columns>
                                    <asp:TemplateField HeaderText="Add Sub-Category">
                                        <ItemTemplate>
                                              <asp:HiddenField ID="hidCategoryID" Value='<%# Eval("CategoryId") %>' runat="server" />
                                            <asp:ImageButton ID="btnEdit" runat="server" 
                                                CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                                                CommandName="AddNewSubCatagory" Height="21px" ImageUrl="~/images/add_new_btn.jpg" 
                                                ToolTip="Add Sub-Category" />
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
                     <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="38px" ImageUrl="~/images/Back2.jpg" onclick="btnBack_Click" Width="100px" />
                    <asp:GridView runat="server" ID="gvDetails" ShowFooter="true" Width="100%"
                    PageSize="10" AutoGenerateColumns="false"
                     OnRowCancelingEdit="gvDetails_RowCancelingEdit"
                    OnRowEditing="gvDetails_RowEditing" OnRowUpdating="gvDetails_RowUpdating" OnRowDeleting="gvDetails_RowDeleting"
                    OnRowCommand="gvDetails_RowCommand" 
                    HeaderStyle-CssClass="header" 
                    >
                    <Columns>
                         <asp:TemplateField HeaderText="Sub-Category ID">
                            <ItemTemplate>
                                <asp:Label ID="lblSubCategoryID" runat="server" Text='<%# Eval("SubCategoryId")%>' />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Sub-Category Name">
                            <ItemTemplate>
                                <asp:Label ID="lblSubCategoryName" runat="server" Text='<%# Eval("SubCategoryName")%>' />
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtSubCategoryName" runat="server" Text='<%# Eval("SubCategoryName")%>' />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtSubCatorys" runat="server" />
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Description">
                            <ItemTemplate>
                                <asp:Label ID="lblDescription" runat="server" Text='<%# Eval("SubCateogoryDescrip")%>'></asp:Label>
                            </ItemTemplate>
                            <EditItemTemplate>
                                <asp:TextBox ID="txtDescription" runat="server" Text='<%# Eval("SubCateogoryDescrip")%>' />
                            </EditItemTemplate>
                            <FooterTemplate>
                                <asp:TextBox ID="txtDescriptions" runat="server" />
                                <asp:Button ID="btnAdd" CommandName="AddNew" runat="server" Text="Add" />
                            </FooterTemplate>
                        </asp:TemplateField>
                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="true" />
                    </Columns>
                </asp:GridView>

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
