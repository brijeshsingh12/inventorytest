<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmChangePwd, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
<div>
 <table class="table" style="width: 50%" align="center">
            <tr>
                <td align="center" class="heading_TD" colspan="2" style="font-size: x-large">
                Change Password</td>
            </tr>
            <tr>
                <td >
                    &nbsp;</td>
                <td >
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="lbldiv">
                    UserName:
                </td>
                <td >
                    <asp:Label ID="lblUserName" runat="server" Font-Bold="True" ForeColor="#CC3300"></asp:Label>
                    <br />
                </td>
            </tr>
            <tr>
                <td  class="lbldiv">
                    Current Password</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server"  TextMode="Password" 
                        CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                        ControlToValidate="txtpassword" Display="Dynamic" 
                        ErrorMessage="Enter Password" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td  class="lbldiv">
                    New Password:</td>
                <td>
                    <asp:TextBox ID="txtNPassword" runat="server"  TextMode="Password" 
                        CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                        ControlToValidate="txtNPassword" Display="Dynamic" 
                        ErrorMessage="Enter New Password" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td  class="lbldiv">
                    Retype Password:</td>
                <td>
                    <asp:TextBox ID="txtConfirmPwd" runat="server"  
                        TextMode="Password" CssClass="textbox"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                        ControlToValidate="txtConfirmPwd" Display="Dynamic" 
                        ErrorMessage="Enter Confirm Password" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" 
                        ControlToCompare="txtNPassword" ControlToValidate="txtConfirmPwd" 
                        Display="Dynamic" ErrorMessage="Password not Match" ValidationGroup="A">*</asp:CompareValidator>
                    <br />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    &nbsp;<asp:ImageButton ID="btnSave" runat="server" 
                        ImageUrl="~/images/save_btn.jpg" onclick="btnSave_Click" 
                        ValidationGroup="A" Width="59px" />
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                </td>
            </tr>
        </table>
</div>
</asp:Content>

