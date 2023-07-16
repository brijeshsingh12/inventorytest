<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmUserRegistration, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <br />
    <div>
        <h2>User Registration</h2>
        <div id="users" runat="server">
        <table class="table" style="width: 100%" align="center">
            <tr valign="top">
                <td style="width: 30px">&nbsp;</td>
                <td class="lbldiv">User-Type:</td>
                <td style="width: 300px">
                    <asp:DropDownList ID="dropUserType" runat="server"
                        CssClass="dropdownlist">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Operator</asp:ListItem>
                        <asp:ListItem>Executive</asp:ListItem>
                        <asp:ListItem>Accountant</asp:ListItem>
                        <asp:ListItem>Computer Operator</asp:ListItem>
                        <asp:ListItem>StoreKeeper</asp:ListItem>
                        <asp:ListItem>Manager</asp:ListItem>
                        <asp:ListItem>Office Assistant</asp:ListItem>
                        <asp:ListItem>Resception</asp:ListItem>
                        <asp:ListItem>Marketing Manager</asp:ListItem>
                        <asp:ListItem>Marketing Executive</asp:ListItem>
                        <asp:ListItem>Field Executive</asp:ListItem>
                        <asp:ListItem>HR Manager</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                        ControlToValidate="dropUserType" Display="Dynamic"
                        ErrorMessage="Select User Type" ValidationGroup="A" InitialValue="Select">*</asp:RequiredFieldValidator>
                    <br />
                </td>
                <td class="lbldiv">Date of Joining:</td>
                <td class="style6">
                    <asp:TextBox ID="txtDOJ" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:CalendarExtender ID="txtDOJ_CalendarExtender" runat="server"
                        Enabled="True" TargetControlID="txtDOJ">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                        ControlToValidate="txtDOJ" Display="Dynamic"
                        ErrorMessage="Enter Date of Joining" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr valign="top">
                <td>&nbsp;</td>
                <td class="lbldiv">Company Name:
                </td>
                <td class="style2">
                     <asp:DropDownList ID="ddlCompanycode" runat="server" AppendDataBoundItems="true"
                        CssClass="dropdownlist">
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="ddlCompanycode" Display="Dynamic"
                        ErrorMessage="Select Company Code" ValidationGroup="A" InitialValue="Select">*</asp:RequiredFieldValidator>
                </td>
                <td class="lbldiv">Name:</td>
                <td class="style8">
                    <asp:TextBox ID="txtName" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                        ControlToValidate="txtName" Display="Dynamic"
                        ErrorMessage="Enter Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr valign="top">
                <td>&nbsp;</td>
                <td class="lbldiv">Date of Birth:</td>
                <td class="style2">
                    <asp:TextBox ID="txtDOB" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:CalendarExtender ID="txtDOB_CalendarExtender" runat="server"
                        Enabled="True" TargetControlID="txtDOB">
                    </asp:CalendarExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                        ControlToValidate="txtDOB" Display="Dynamic"
                        ErrorMessage="Enter Date of Birth" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
                <td class="lbldiv">Gender:</td>
                <td class="style8">
                    <asp:DropDownList ID="dropSex" runat="server" CssClass="dropdownlist">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Male</asp:ListItem>
                        <asp:ListItem>Female</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                        ControlToValidate="dropSex" Display="Dynamic"
                        ErrorMessage="Select Gender" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="lbldiv">MarriedStatus</td>
                <td class="style2">
                    <asp:DropDownList ID="dropMarried" runat="server" Width="96px"
                        CssClass="dropdownlist">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>Married</asp:ListItem>
                        <asp:ListItem>Unmarried</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="lbldiv">Father/Husband :</td>
                <td class="style10">
                    <asp:TextBox ID="txtFather" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                        ControlToValidate="txtFather" Display="Dynamic"
                        ErrorMessage="Enter Father/Husband Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr valign="top">
                <td>&nbsp;</td>
                <td class="lbldiv">Address:</td>
                <td class="style2">
                    <asp:TextBox ID="txtAddress" runat="server" Height="54px"
                        TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                </td>
                <td class="lbldiv">Highest Education</td>
                <td class="style4">
                    <asp:DropDownList ID="dropQualification" runat="server"
                        CssClass="dropdownlist">
                        <asp:ListItem>Select</asp:ListItem>
                        <asp:ListItem>B.Com</asp:ListItem>
                        <asp:ListItem>B.A.</asp:ListItem>
                        <asp:ListItem>B.Sc</asp:ListItem>
                        <asp:ListItem>MA</asp:ListItem>
                        <asp:ListItem>B.Ed</asp:ListItem>
                        <asp:ListItem>Doctrate</asp:ListItem>
                        <asp:ListItem>Diploma</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="lbldiv">Country:</td>
                <td class="style2">
                    <asp:DropDownList ID="dropCountry" runat="server"
                        CssClass="dropdownlist">
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td class="lbldiv">City:</td>
                <td class="style12">
                    <asp:DropDownList ID="dropCity" runat="server"
                        CssClass="dropdownlist">
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="lbldiv">Mobile</td>
                <td class="style2">
                    <asp:TextBox ID="txtMobile" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                        ControlToValidate="txtMobile" Display="Dynamic"
                        ErrorMessage="Enter Mobile" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
                <td class="lbldiv">Zip Code:</td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server"
                        ControlToValidate="txtZip" Display="Dynamic"
                        ErrorMessage="Enter Zipcode" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td class="lbldiv">Email:</td>
                <td class="style2">
                    <asp:TextBox ID="txtEmail" autocomplete="off" runat="server" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                        ControlToValidate="txtEmail" Display="Dynamic"
                        ErrorMessage="Enter Email Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
                <td class="lbldiv">User Name::</td>
                <td>
                    <asp:TextBox ID="txtUserNameforLogin" autocomplete="off" runat="server"
                        CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator14" runat="server"
                        ControlToValidate="txtUserNameforLogin" Display="Dynamic"
                        ErrorMessage="Enter User Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td colspan="3">&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server"
                        ImageUrl="~/images/save_btn.jpg" OnClick="ImageButton1_Click"
                        ValidationGroup="A" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                </td>
            </tr>
        </table>
        </div>
        <div id="userslist" runat="server">
             <asp:ImageButton ID="btnCreateNew" runat="server"
                        ImageUrl="~/images/add_new_btn.jpg" OnClick="btnCreateNew_Click" />
             <asp:GridView ID="GridView1" runat="server"
                    AutoGenerateColumns="False" EmptyDataText="Data Not Found" OnRowCommand="GridView1_RowCommand"
                    PageSize="8"
                    CssClass="mydatagrid"
                    PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header"
                    RowStyle-CssClass="rows">
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HiddenField ID="hidID" Value='<%# Eval("ID") %>' runat="server" />
                                <asp:ImageButton ID="btnEdit" runat="server"
                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                    CommandName="Modify" Height="21px" ImageUrl="~/images/edit icon.jpg"
                                    ToolTip="Modify Details" Width="32px" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:ImageButton ID="btnDelete" runat="server"
                                    CommandArgument="<%# ((GridViewRow) Container).RowIndex %>"
                                    CommandName="Deleted" Height="19px" ImageUrl="~/images/delete icon.jpg"
                                    ToolTip="Remove User" OnClientClick="if ( !confirm('Are you sure you want to delete this User?')) return false;" />
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:BoundField DataField="UserName" HeaderText="User Name" />
                       <%-- <asp:BoundField DataField="Father/Husband" HeaderText="Father/Husband" />--%>
                        <asp:BoundField DataField="DOB" HeaderText="DOB" />
                        <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />
                        <asp:BoundField DataField="Mobile" HeaderText="Mobile" />
                        <asp:BoundField DataField="UserType" HeaderText="UserType" />
                    </Columns>
                </asp:GridView>
        </div>
    </div>

</asp:Content>

