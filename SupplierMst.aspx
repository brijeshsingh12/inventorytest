<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_SupplierMst, Root" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
    <ContentTemplate>
    <table style="width:100%;">
        <tr valign="top">
            <td width="50%" colspan="2" style="width: 100%">
                <asp:MultiView ID="MultiView1" runat="server">
                    <asp:View ID="View1" runat="server">
                        <asp:ImageButton ID="btnAddNew" runat="server" Height="35px" 
                            ImageUrl="~/images/add_new_btn2.jpg" onclick="btnAddNew_Click" Width="130px" />
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Supplier List">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                EmptyDataText="Data Not Found"
                                OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="8" 
                                onrowcommand="GridView1_RowCommand" 
                                AutoGenerateColumns="False"
                                CssClass="mydatagrid" 
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" 
                                RowStyle-CssClass="rows">
                                 <Columns>
                                            <asp:TemplateField HeaderText="Edit"><ItemTemplate>
                                                 <asp:HiddenField ID="hidId" Value='<%# Eval("Id") %>' runat="server" />
                                                <asp:ImageButton ID="btnEdit" runat="server" 
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                                                        CommandName="Modify" Height="21px" ImageUrl="~/images/edit icon.jpg" 
                                                        ToolTip="Modify Item" Width="32px" /></ItemTemplate></asp:TemplateField>
                                            <asp:TemplateField HeaderText="Delete"><ItemTemplate><asp:ImageButton ID="btnDelete" runat="server" 
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" 
                                                        CommandName="Deleted" Height="19px" ImageUrl="~/images/delete icon.jpg" 
                                                        OnClientClick="if ( !confirm('Are you sure you want to delete this Supplier')) return false;" 
                                                        ToolTip="Remove Item" /></ItemTemplate></asp:TemplateField>
                                            <asp:BoundField DataField="SupplierName" HeaderText="Supplier Name" />
                                            <asp:BoundField DataField="BillingAddress" HeaderText="Billing Address" />
                                            <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" />
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" />
                                            <asp:BoundField DataField="Fax" HeaderText="Fax" />
                                        </Columns>
                            </asp:GridView>
                        </asp:Panel>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <table align="center" class="table" style="width:50%">
                            <tr valign="top">
                                <td>
                                    &nbsp;</td>
                                <td align="right">
                                    <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="38px" 
                                        ImageUrl="~/images/Back2.jpg" onclick="btnBack_Click" Width="100px" />
                                </td>
                            </tr>
                            <tr valign="top">
                                <td class="lbldiv">
                                    Supplier Code:</td>
                                <td>
                                    <asp:TextBox ID="txtSupplierCode" runat="server" 
                                        CssClass="textbox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                        ControlToValidate="txtSupplierCode" Display="Dynamic" 
                                        ErrorMessage="Enter Supplier Code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    <br />
                                </td>
                            </tr>
                            <tr>
                                <td valign="top"  class="lbldiv">
                                    Supplier Name:</td>
                                <td>
                                    <asp:TextBox ID="txtSupplierName" runat="server" CssClass="textbox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                        ControlToValidate="txtSupplierName" Display="Dynamic" 
                                        ErrorMessage="Enter Supplier Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td valign="top"  class="lbldiv">
                                    Billing Address:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtAddress" runat="server" Height="58px" TextMode="MultiLine" 
                                        CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td  class="lbldiv">
                                    Zip Code:</td>
                                <td>
                                    <asp:TextBox ID="txtZipCode" runat="server" CssClass="textbox"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="txtZipCode_FilteredTextBoxExtender" 
                                        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtZipCode"></asp:FilteredTextBoxExtender>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td class="lbldiv">
                                    Email:</td>
                                <td>
                                    <asp:TextBox ID="txtEmail" runat="server"  CssClass="textbox"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                        ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email Id" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td  class="lbldiv">
                                    Phone:</td>
                                <td>
                                    <asp:TextBox ID="txtPhone" runat="server"  CssClass="textbox"></asp:TextBox>
                                    <asp:FilteredTextBoxExtender ID="txtPhone_FilteredTextBoxExtender" 
                                        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtPhone"></asp:FilteredTextBoxExtender>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                        ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Enter Phone" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td  class="lbldiv">
                                    Fax:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtFax" runat="server"  CssClass="textbox"></asp:TextBox>
                                </td>
                            </tr>
                              <tr valign="top">
                                <td  class="lbldiv">
                                    Credit Limit:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCreditLimit" runat="server"  CssClass="textbox"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtCreditLimit" Display="Dynamic" ErrorMessage="Enter Credit Limit" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr valign="top">
                                <td  class="lbldiv">
                                    Credit Days:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtCreditDays" runat="server"  CssClass="textbox"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtCreditDays" Display="Dynamic" ErrorMessage="Enter Credit Days" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                              <tr valign="top">
                                <td  class="lbldiv">
                                    Opening Balance(Credit):
                                </td>
                                <td>
                                    <asp:TextBox ID="txtOpeningBalance" runat="server"  CssClass="textbox"></asp:TextBox>
                                    Payble
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                        ControlToValidate="txtOpeningBalance" Display="Dynamic" ErrorMessage="Enter Opening Balance" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                             <tr valign="top">
                                <td  class="lbldiv">
                                   GST No:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtGSTNo" runat="server"  CssClass="textbox"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="txtGSTNo" Display="Dynamic" ErrorMessage="Enter GST No" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                              <tr valign="top">
                                <td  class="lbldiv">
                                   PAN No:
                                </td>
                                <td>
                                    <asp:TextBox ID="txtPAN" runat="server"  CssClass="textbox"></asp:TextBox>
                                      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                        ControlToValidate="txtPAN" Display="Dynamic" ErrorMessage="Enter PAN No" 
                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:Button ID="btnSave" runat="server" CssClass="button_submit" 
                                        OnClick="btnsave_Click" Text="Save" ValidationGroup="A" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    &nbsp;
                                </td>
                                <td>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                </td>
                            </tr>
                        </table>
                    </asp:View>
                </asp:MultiView>
            </td>
        </tr>
        <tr valign="top">
            <td width="50%">
                &nbsp;</td>
            <td width="50%">
                &nbsp;</td>
        </tr>
    </table>
    <br />
    </ContentTemplate>
    </asp:UpdatePanel>
    
    </asp:Content>
