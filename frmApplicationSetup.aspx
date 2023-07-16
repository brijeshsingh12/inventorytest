<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmApplicationSetup, Root" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width:100%;">
        <tr>
            <td width="60%">
        <table class="table" align="center">
            <tr>
                <td align="center" class="heading_TD" colspan="5">
                        Application Setup
                </td>
            </tr>
            <tr valign="top">
                <td">
                    </td>
                <td">
                    </td>
                <td">
                    </td>
                <td">
                    </td>
                <td">
                    </td>
            </tr>
            <tr valign="top">
                <td style="width:30px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="width:250px">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr valign="top">
                <td style="width:30px">
                    &nbsp;</td>
                <td>
                    Company Code:
                </td>
                <td style="width:250px">
                    <asp:TextBox ID="txtCompanyCode" runat="server" Width="180px" BackColor="#FFFFCC"
                        Enabled="False"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtCompanyCode"
                        Display="Dynamic" ErrorMessage="Enter Company Code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
                <td>
                    <br />
                </td>
            </tr>
            <tr valign="top">
                <td>
                    &nbsp;</td>
                <td colspan="4">
                <hr />
                </td>
            </tr>
            <tr valign="top">
                <td>
                    &nbsp;</td>
                <td>
                    Company Name:</td>
                <td>
                    <asp:TextBox ID="txtComName" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtComName"
                        Display="Dynamic" ErrorMessage="Enter Company Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>
                    Contact Name:</td>
                <td>
                    &nbsp;<asp:TextBox ID="txtContactPerson" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactPerson"
                        Display="Dynamic" ErrorMessage="Enter Contact Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr valign="top">
                <td>
                    &nbsp;</td>
                <td>
                    Billing Address:
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server" Width="180px" Height="42px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    Zip Code:
                </td>
                <td>
                    <asp:TextBox ID="txtZip" runat="server" Width="180px" MaxLength="10"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txtZip_FilteredTextBoxExtender" runat="server" 
                        Enabled="True" TargetControlID="txtZip" FilterType="Numbers">
                    </asp:FilteredTextBoxExtender>

                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Country:
                </td>
                <td>
                    <asp:DropDownList ID="dropCountry" runat="server" Width="180px" 
                        class="dropdownbox">
                        <asp:ListItem>India</asp:ListItem>
                        <asp:ListItem>America</asp:ListItem>
                        <asp:ListItem>China</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    State/province:
                </td>
                <td>
                    <asp:DropDownList ID="dropState" runat="server" Width="180px" 
                        class="dropdownbox">
                        <asp:ListItem>Delhi</asp:ListItem>
                        <asp:ListItem>Madras</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    City:
                </td>
                <td>
                    <asp:DropDownList ID="dropCity" runat="server" Width="180px" 
                        class="dropdownbox">
                        <asp:ListItem>New Delhi</asp:ListItem>
                        <asp:ListItem>Mumbai</asp:ListItem>
                        <asp:ListItem>Rajasthan</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>
                    URL:
                </td>
                <td>
                    <asp:TextBox ID="txtURL" runat="server" Width="180px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Email:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" Width="180px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail"
                        Display="Dynamic" ErrorMessage="Enter Email Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                    <br />
                </td>
                <td>
                    Phone:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" Width="180px" MaxLength="12"></asp:TextBox>
                    <asp:FilteredTextBoxExtender ID="txtPhone_FilteredTextBoxExtender" runat="server"
                        Enabled="True" FilterType="Numbers" TargetControlID="txtPhone">
                    </asp:FilteredTextBoxExtender>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone"
                        Display="Dynamic" ErrorMessage="Enter Phone" ValidationGroup="A">*</asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Fax:
                </td>
                <td>
                    <asp:TextBox ID="txtFax" runat="server" Width="180px" MaxLength="12"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;
                </td>
                <td>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    Description:
                </td>
                <td colspan="3">
                    <asp:TextBox ID="txtDescription" runat="server" Width="180px" Height="40px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td colspan="3">
                    &nbsp;
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/images/add_new_btn.jpg"
                        OnClick="ImageButton2_Click" />
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/save_btn.jpg"
                        OnClick="ImageButton1_Click" ValidationGroup="A" />
                </td>
                <td>
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" ValidationGroup="A" />
                </td>
            </tr>
        </table>
            </td>
            <td width="40%" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True" CellPadding="2" EmptyDataText="Data Not Found"
                    ForeColor="Black"
                    PageSize="15" onpageindexchanging="GridView1_PageIndexChanging" 
                    CssClass="mydatagrid" 
                    PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" 
                    RowStyle-CssClass="rows">
                </asp:GridView>
             </td>
        </tr>
    </table>
    <br />
    <div>
          <br />
    </div>
</asp:Content>


