<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="frmBranchCreation, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <table style="width: 100%">
                <tr>
                    <td colspan="2" style="width: 100%">
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <asp:Panel ID="Panel2" runat="server" GroupingText="Company List">
                                    <asp:ImageButton ID="btnAddNew" runat="server" Height="35px"
                                        ImageUrl="~/images/add_new_btn2.jpg" OnClick="btnAddNew_Click" Width="130px" />
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                        AutoGenerateColumns="False" EmptyDataText="Data Not Found"
                                        OnPageIndexChanging="GridView1_PageIndexChanging"
                                        OnRowCommand="GridView1_RowCommand" PageSize="8"
                                        CssClass="mydatagrid"
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header"
                                        RowStyle-CssClass="rows">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="hidCompanyCode" Value='<%# Eval("CompanyCode") %>' runat="server" />
                                                    <asp:ImageButton ID="btnEdit" runat="server"
                                                        CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                                        CommandName="Modify" Height="21px" ImageUrl="~/images/edit icon.jpg"
                                                        ToolTip="Modify Details" Width="32px" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="CompanyName" HeaderText="Company Name" />
                                            <asp:BoundField DataField="Contact Person" HeaderText="Contact Person" />
                                            <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" />
                                            <asp:BoundField DataField="Email" HeaderText="Email" />
                                            <asp:BoundField DataField="Phone" HeaderText="Phone" />
                                            <asp:BoundField DataField="Fax" HeaderText="Fax" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                            </asp:View>

                            <asp:View ID="View2" runat="server">
                                <%-- <asp:TextBox ID="txtCompanyCode" runat="server" CssClass="form-text" 
                                              Enabled="False" required name="validate_firstname"></asp:TextBox>--%>
                                <asp:Panel ID="Panel1" runat="server" Font-Bold="False"
                                    GroupingText="Add Company" Width="100%">
                                    <table align="center" class="table">
                                        <tr valign="top">
                                            <td style="width: 30px">&nbsp;</td>
                                            <td class="lbldiv">&nbsp;</td>
                                            <td class="style3">&nbsp;</td>
                                            <td class="style4">&nbsp;</td>
                                            <td style="width: 250px" align="right">&nbsp;&nbsp;
                                        <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="38px"
                                            ImageUrl="~/images/Back2.jpg" OnClick="btnBack_Click" Width="100px" />
                                            </td>
                                        </tr>
                                        <tr valign="top">
                                            <td class="style5">&nbsp;
                                            </td>
                                            <td class="lbldiv">Company Code:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCompanyCode" runat="server" class="form-control"
                                                    Enabled="False"></asp:TextBox>
                                            </td>
                                            <td>&nbsp;
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                            ControlToValidate="txtCompanyCode" Display="Dynamic"
                                            ErrorMessage="Enter Company Code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="style9"></td>
                                        </tr>

                                        <tr valign="top">
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Financial Year (From):
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtFYI_From" runat="server"></asp:TextBox>
                                                <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server"
                                                    Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtFYI_From">
                                                </asp:CalendarExtender>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                    ControlToValidate="txtFYI_From" Display="Dynamic"
                                                    ErrorMessage="Select Start Financial Year" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="lbldiv">Financial Year (To):&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtFYI_To" runat="server"></asp:TextBox>
                                                <asp:CalendarExtender ID="CalendarExtender1" runat="server"
                                                    Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtFYI_To">
                                                </asp:CalendarExtender>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                    ControlToValidate="txtFYI_To" Display="Dynamic"
                                                    ErrorMessage="Select End Financial Year" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>

                                        <tr valign="top">
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Company Name:
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtComName" runat="server" CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                    ControlToValidate="txtComName" Display="Dynamic"
                                                    ErrorMessage="Enter Company Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="lbldiv">Contact Name:&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtContactPerson" runat="server"
                                                    CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                    ControlToValidate="txtContactPerson" Display="Dynamic"
                                                    ErrorMessage="Enter Contact Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr valign="top">
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">VAT No:
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtVATNo" runat="server" CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                    ControlToValidate="txtVATNo" Display="Dynamic"
                                                    ErrorMessage="Enter VAT No" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="lbldiv">GST No:&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtGSTNo" runat="server"
                                                    CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                    ControlToValidate="txtGSTNo" Display="Dynamic"
                                                    ErrorMessage="Enter GST No" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr valign="top">
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">PAN No:
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtPANNo" runat="server" CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                    ControlToValidate="txtPANNo" Display="Dynamic"
                                                    ErrorMessage="Enter PAN No" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                            <td class="lbldiv">CST No:&nbsp;
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtCSTNo" runat="server"
                                                    CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                                                    ControlToValidate="txtCSTNo" Display="Dynamic"
                                                    ErrorMessage="Enter CST No" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr valign="top">
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Billing Address:
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox"
                                                    Height="50px" TextMode="MultiLine"></asp:TextBox>
                                            </td>
                                            <td class="lbldiv">Zip Code:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtZip" runat="server" CssClass="textbox"
                                                    MaxLength="10"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txtZip_FilteredTextBoxExtender" runat="server"
                                                    Enabled="True" FilterType="Numbers" TargetControlID="txtZip">
                                                </asp:FilteredTextBoxExtender>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Country:
                                            </td>
                                            <td class="style3">
                                                <asp:DropDownList ID="dropCountry" runat="server" class="dropdownbox"
                                                    CssClass="dropdownlist">
                                                    <asp:ListItem>India</asp:ListItem>
                                                    <asp:ListItem>America</asp:ListItem>
                                                    <asp:ListItem>China</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="lbldiv">State/province:
                                            </td>
                                            <td>
                                                <asp:DropDownList ID="dropState" runat="server"
                                                    CssClass="dropdownlist">
                                                    <asp:ListItem>Delhi</asp:ListItem>
                                                    <asp:ListItem>Madras</asp:ListItem>
                                                    <asp:ListItem>Mumbai</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">City:
                                            </td>
                                            <td class="style3">
                                                <asp:DropDownList ID="dropCity" runat="server" class="dropdownbox"
                                                    CssClass="dropdownlist">
                                                    <asp:ListItem>New Delhi</asp:ListItem>
                                                    <asp:ListItem>Mumbai</asp:ListItem>
                                                    <asp:ListItem>Rajasthan</asp:ListItem>
                                                </asp:DropDownList>
                                            </td>
                                            <td class="lbldiv">URL:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtURL" runat="server" CssClass="textbox"></asp:TextBox>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Email:
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                    ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email Id"
                                                    ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                <br />
                                            </td>
                                            <td class="lbldiv">Phone:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox"
                                                    MaxLength="12"></asp:TextBox>
                                                <asp:FilteredTextBoxExtender ID="txtPhone_FilteredTextBoxExtender"
                                                    runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtPhone">
                                                </asp:FilteredTextBoxExtender>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                    ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Enter Phone"
                                                    ValidationGroup="A">*</asp:RequiredFieldValidator>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Fax:
                                            </td>
                                            <td class="style3">
                                                <asp:TextBox ID="txtFax" runat="server" CssClass="textbox"
                                                    MaxLength="12"></asp:TextBox>
                                                <br />
                                            </td>
                                            <td class="lbldiv">Description:
                                            </td>
                                            <td>
                                                <asp:TextBox ID="txtDescription" runat="server" CssClass="textbox"
                                                    Height="58px" TextMode="MultiLine"></asp:TextBox>

                                            </td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">Select Logo
                                            </td>
                                            <td colspan="3">
                                                <asp:FileUpload ID="FileUpload1" runat="server" />
                                                <asp:Image ID="Image1" runat="server" Width="100px" Height="100px" />
                                            </td>
                                            <td class="style4"></td>
                                            <td></td>
                                        </tr>
                                        <tr>
                                            <td>&nbsp;
                                            </td>
                                            <td class="lbldiv">&nbsp;
                                            </td>
                                            <td colspan="2">
                                                <asp:Button ID="btnSave" runat="server" CssClass="button_submit"
                                                    OnClick="btnsave_Click" Text="Save" ValidationGroup="A" />
                                            </td>
                                            <td>
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>


                            </asp:View>
                        </asp:MultiView>
                    </td>
                </tr>
            </table>
        </ContentTemplate>

        <Triggers>
            <asp:PostBackTrigger ControlID="btnsave" />
        </Triggers>

    </asp:UpdatePanel>

</asp:Content>
