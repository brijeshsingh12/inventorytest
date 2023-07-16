<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="Inven_frmCompanyProfile, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width:100%;">
        <tr>
            <td>
                        <asp:MultiView ID="MultiView1" runat="server">
                            <asp:View ID="View1" runat="server">
                                <asp:Panel ID="Panel3" runat="server" GroupingText="Customer List">
                                    <asp:ImageButton ID="btnAddNew" runat="server" Height="35px" 
                                        ImageUrl="~/images/add_new_btn2.jpg" onclick="btnAddNew_Click" Width="130px" />
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                        AutoGenerateColumns="False"  EmptyDataText="Data Not Found" 
                                        OnPageIndexChanging="GridView1_PageIndexChanging" 
                                        onrowcommand="GridView1_RowCommand" PageSize="5"                     
                                        CssClass="mydatagrid" 
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header" 
                                        RowStyle-CssClass="rows">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="hidPartyCode" Value='<%# Eval("PartyCode") %>' runat="server" />
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
                                                        OnClientClick="if ( !confirm('Are you sure you want to delete this Party')) return false;" 
                                                        ToolTip="Remove Item" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="FirstName" HeaderText="First Name" />
                                            <asp:BoundField DataField="LastName" HeaderText="LastName" />
                                            <asp:BoundField DataField="Department" HeaderText="Department" />
                                            <asp:BoundField DataField="AccountNo" HeaderText="Account No" />
                                            <asp:BoundField DataField="PAN" HeaderText="PAN" />
                                            <asp:BoundField DataField="TINNo" HeaderText="TINNo" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:Panel ID="Panel2" runat="server" GroupingText="Add Customer Detail">
                                    <table class="table">
                                        <tr>
                                            <td valign="top" width="50%">
                                                <table class="table">
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td class="style1">
                                                            &nbsp;</td>
                                                        <td class="style2">
                                                            &nbsp;</td>
                                                        <td align="right">
                                                            <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="38px" 
                                                                ImageUrl="~/images/Back2.jpg" onclick="btnBack_Click" Width="100px" />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td class="lbldiv">
                                                            Customer Code:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtPartyCode" runat="server" Enabled="False" CssClass="textbox"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                                ControlToValidate="txtPartyCode" Display="Dynamic" 
                                                                ErrorMessage="Enter Agent Code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="style2">
                                                            &nbsp;
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="4">
                                                            <hr />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td  class="lbldiv">
                                                            First Name:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtAgentFName" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                                ControlToValidate="txtAgentFName" Display="Dynamic" ErrorMessage="Enter Name" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                        <td class="lbldiv">
                                                            Last Name:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtLName" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td  class="lbldiv">
                                                            Address:
                                                        </td>
                                                        <td class="style1" rowspan="2">
                                                            <asp:TextBox ID="txtAddress" runat="server" CssClass="textbox" Height="58px" 
                                                                TextMode="MultiLine" ></asp:TextBox>
                                                        </td>
                                                        <td class="lbldiv">
                                                            Zip Code:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtZipCode" runat="server" CssClass="textbox" ></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="txtZipCode_FilteredTextBoxExtender" 
                                                                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtZipCode">
                                                            </asp:FilteredTextBoxExtender>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            &nbsp;</td>
                                                        <td class="lbldiv">
                                                            Mobile:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtMobile" runat="server" CssClass="textbox" ></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="txtMobile_FilteredTextBoxExtender" 
                                                                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtMobile">
                                                            </asp:FilteredTextBoxExtender>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                                                                ControlToValidate="txtMobile" Display="Dynamic" ErrorMessage="Enter Mobile" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td  class="lbldiv">
                                                            Telephone:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtTele" runat="server" CssClass="textbox" ></asp:TextBox>
                                                            <asp:FilteredTextBoxExtender ID="txtTele_FilteredTextBoxExtender" 
                                                                runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtTele">
                                                            </asp:FilteredTextBoxExtender>
                                                            <br />
                                                        </td>
                                                        <td class="lbldiv">
                                                            Fax:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtFax" runat="server" CssClass="textbox" ></asp:TextBox>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td  class="lbldiv">
                                                            Country:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:DropDownList ID="ddlCountry" runat="server" class="dropdownlist" 
                                                                >
                                                                <asp:ListItem>Select</asp:ListItem>
                                                                <asp:ListItem>India</asp:ListItem>
                                                                <asp:ListItem>America</asp:ListItem>
                                                                <asp:ListItem>Japan</asp:ListItem>
                                                                <asp:ListItem>Africa</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                                                ControlToValidate="ddlCountry" Display="Dynamic" ErrorMessage="Select Country" 
                                                                InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                        <td class="lbldiv">
                                                            State/province:
                                                        </td>
                                                        <td>
                                                            <asp:DropDownList ID="ddlState" runat="server" class="dropdownlist" 
                                                                >
                                                                <asp:ListItem>Select</asp:ListItem>
                                                                <asp:ListItem>Delhi</asp:ListItem>
                                                                <asp:ListItem>Madras</asp:ListItem>
                                                                <asp:ListItem>America</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" 
                                                                ControlToValidate="ddlState" Display="Dynamic" ErrorMessage="Select State" 
                                                                InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td  class="lbldiv">
                                                            City:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:DropDownList ID="ddlCity" runat="server" class="dropdownlist" >
                                                                <asp:ListItem>Select</asp:ListItem>
                                                                <asp:ListItem>New Delhi</asp:ListItem>
                                                                <asp:ListItem>Noida</asp:ListItem>
                                                                <asp:ListItem>Gurgaon</asp:ListItem>
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                                                                ControlToValidate="ddlCity" Display="Dynamic" ErrorMessage="Select City" 
                                                                InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                        <td class="lbldiv">
                                                            Sc/ST No:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtSTNo" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr valign="top">
                                                        <td  class="lbldiv">
                                                            Website:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtWebsite" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                        <td class="lbldiv">
                                                            Email-Id:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtEmail" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                                                ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Enter Email ID" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                            <br />
                                                        </td>
                                                    </tr>
                                                   
                                                    <tr>
                                                        <td  class="lbldiv">
                                                            Pan No:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtPAN" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                                                                ControlToValidate="txtPAN" Display="Dynamic" ErrorMessage="Enter Pan No" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="lbldiv">
                                                            Account No:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtAccountNo" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td  class="lbldiv">
                                                            GST No:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtGSTNO" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                                ControlToValidate="txtGSTNO" Display="Dynamic" ErrorMessage="Enter GST No" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="lbldiv">
                                                            State Code:
                                                        </td>
                                                        <td>
                                                             <asp:DropDownList ID="ddlStatecode" runat="server" class="dropdownlist" >
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                                                                ControlToValidate="ddlStatecode" Display="Dynamic" ErrorMessage="Select State Code" 
                                                                InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                      <tr>
                                                        <td  class="lbldiv">
                                                            Tax Slab Type:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:DropDownList ID="ddlTaxSlabType" runat="server" class="dropdownlist" >
                                                            </asp:DropDownList>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                                                ControlToValidate="ddlTaxSlabType" Display="Dynamic" ErrorMessage="Select Tax Slab Type" 
                                                                InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                        <td class="lbldiv">
                                                            Opening Balance (Debit):
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtOpeningBalance" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            Receivable
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" 
                                                                ControlToValidate="txtOpeningBalance" Display="Dynamic" ErrorMessage="Enter Opening Balance" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>

                                                    <tr>
                                                        <td  class="lbldiv">
                                                            TIN No:
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtTINNo" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                        <td class="lbldiv">
                                                            Tin Date:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtTINDate" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                     <tr>
                                                        <td  class="lbldiv">
                                                            Department
                                                        </td>
                                                        <td class="style1">
                                                            <asp:TextBox ID="txtDepartment" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                        <td class="lbldiv">
                                                            Credit Limit:
                                                        </td>
                                                        <td>
                                                            <asp:TextBox ID="txtCreditLimit" runat="server"  CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                    </tr>
                                                    <tr valign="top">
                                                        <td  class="lbldiv">
                                                             Remark:
                                                        </td>
                                                        <td class="style1">
                                                                 <asp:TextBox ID="txtRemark" runat="server" Height="58px" TextMode="MultiLine" 
                                                                 CssClass="textbox"></asp:TextBox>
                                                        </td>
                                                        <td class="lbldiv">
                                                           Credit Days:
                                                        </td>
                                                        <td>
                                                             <asp:TextBox ID="txtCreditDays" runat="server"  CssClass="textbox"></asp:TextBox>
                                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                                                                ControlToValidate="txtCreditDays" Display="Dynamic" ErrorMessage="Enter Credit Days" 
                                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">
                                                            <asp:Button ID="btnSave" runat="server" CssClass="button_submit" 
                                                                OnClick="btnsave_Click" Text="Save" ValidationGroup="A" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                    <tr>
                                                        <td colspan="3">
                                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                                ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                                        </td>
                                                        <td>
                                                            &nbsp;
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
                                </asp:Panel>
                            </asp:View>
                        </asp:MultiView>
                        </td>
        </tr>
        </table>
    <br />
    <br />
    <div>
        <br />
        <div align="center">
            <asp:Panel ID="Panel1" runat="server" ScrollBars="Horizontal" Width="900px">
            </asp:Panel>
        </div>
    </div>
</asp:Content>
