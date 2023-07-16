<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmShipperMst, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <asp:Panel ID="Panel2" runat="server" GroupingText="Shipper List">
                <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                    EmptyDataText="Data Not Found"
                    AutoGenerateColumns="false"
                    OnPageIndexChanging="GridView1_PageIndexChanging" OnRowCommand="GridView1_RowCommand"
                    CssClass="mydatagrid"
                    PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header"
                    RowStyle-CssClass="rows">
                    <Columns>
                        <asp:TemplateField HeaderText="Edit">
                            <ItemTemplate>
                                <asp:HiddenField ID="hidShipperCode" Value='<%# Eval("ShipperCode") %>' runat="server" />
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
                                    OnClientClick="if ( !confirm('Are you sure you want to delete this Shipper')) return false;"
                                    ToolTip="Remove Shipper" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="ShipperName" HeaderText="Shipper Name" />
                        <asp:BoundField DataField="ContactPerson" HeaderText="Contact Person" />
                        <asp:BoundField DataField="ZipCode" HeaderText="Zip Code" />
                        <asp:BoundField DataField="Phone" HeaderText="Phone" />
                        <asp:BoundField DataField="Email" HeaderText="Email" />

                    </Columns>
                </asp:GridView>
            </asp:Panel>
            <br />
            <table class="table">
                <tr>
                    <td valign="top" width="70%">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Add New Shipper Details">
                            <table class="table">
                                <tr valign="top">
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                    <td>&nbsp;</td>
                                </tr>
                                <tr valign="top">
                                    <td class="lbldiv">Shipper Code:</td>
                                    <td>
                                        <asp:TextBox ID="txtShipperCode" runat="server" CssClass="textbox" Enabled="False"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                            ControlToValidate="txtShipperCode" Display="Dynamic"
                                            ErrorMessage="Enter Shipper Code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td>&nbsp;</td>
                                    <td>
                                        <br />
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">Contact Name:</td>
                                    <td>
                                        <asp:TextBox ID="txtContactPerson" runat="server"
                                            CssClass="textbox"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtContactPerson"
                                            Display="Dynamic" ErrorMessage="Enter Contact Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td class="lbldiv">Shipper Name:&nbsp;
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtShipperName" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ControlToValidate="txtShipperName" Display="Dynamic"
                                            ErrorMessage="Enter Shipper  Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr valign="top">
                                    <td class="lbldiv">Billing Address:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtAddress" runat="server" Height="44px"
                                            TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                                    </td>
                                    <td class="lbldiv">Zip Code:</td>
                                    <td>
                                        <asp:TextBox ID="txtZip" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtZip_FilteredTextBoxExtender" runat="server" Enabled="True"
                                            FilterType="Numbers" TargetControlID="txtZip">
                                        </asp:FilteredTextBoxExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">Country:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="dropCountry" runat="server" CssClass="dropdownlist">
                                            <asp:ListItem>India</asp:ListItem>
                                            <asp:ListItem>America</asp:ListItem>
                                            <asp:ListItem>China</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="lbldiv">State/province:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="dropState" runat="server" CssClass="dropdownlist">
                                            <asp:ListItem>Delhi</asp:ListItem>
                                            <asp:ListItem>Madras</asp:ListItem>
                                            <asp:ListItem>Mumbai</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">City:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="dropCity" runat="server" CssClass="dropdownlist">
                                            <asp:ListItem>New Delhi</asp:ListItem>
                                            <asp:ListItem>Mumbai</asp:ListItem>
                                            <asp:ListItem>Rajasthan</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                    <td class="lbldiv">URL:</td>
                                    <td>
                                        <asp:TextBox ID="txtURL" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">Email:</td>
                                    <td>
                                        <asp:TextBox ID="txtEmail" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtEmail"
                                            Display="Dynamic" ErrorMessage="Enter Email Id" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td class="lbldiv">Fax:</td>
                                    <td>
                                        <asp:TextBox ID="txtFax" runat="server" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr valign="top">
                                    <td class="lbldiv">Phone:</td>
                                    <td>
                                        <asp:TextBox ID="txtPhone" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:FilteredTextBoxExtender ID="txtPhone_FilteredTextBoxExtender" runat="server"
                                            Enabled="True" FilterType="Numbers" TargetControlID="txtPhone">
                                        </asp:FilteredTextBoxExtender>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtPhone"
                                            Display="Dynamic" ErrorMessage="Enter Phone" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        <br />
                                    </td>
                                    <td class="lbldiv">Description:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtDescription" runat="server" Height="58px"
                                            TextMode="MultiLine" CssClass="textbox"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4">
                                        <asp:Button ID="btnAdd" runat="server" CssClass="button_submit" OnClick="ImageButton2_Click" Text="Add" />
                                        <asp:Button ID="btnSave" runat="server" CssClass="button_submit" OnClick="ImageButton1_Click" Text="Save" ValidationGroup="A" />
                                        <asp:Button ID="btnRefresh" runat="server" CssClass="button_submit" OnClick="btnRefresh_Click" Text="Refresh" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">&nbsp;
                    &nbsp;<asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" ValidationGroup="A" />
                                    </td>
                                    <td>&nbsp;
                                    </td>
                                    <td>&nbsp;
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>
