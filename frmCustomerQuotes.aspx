<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="frmCustomerQuotes, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <br />
            <table style="width: 100%;">
                <tr>
                    <td align="center">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Customer / Item Mapping">
                            <table class="table">
                                <tr>
                                    <td class="lbldiv">Select Customer:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="dropCustomer" runat="server" AutoPostBack="true"
                                            class="dropdownbox" AppendDataBoundItems="True" CssClass="dropdownlist">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropCustomer"
                                            Display="Dynamic" ErrorMessage="Select Customer code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    </td>
                                    <td class="lbldiv">quote no</td>
                                    <td>
                                        <asp:TextBox ID="txtQuotesNo" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtQuotesNo"
                                            Display="Dynamic" ErrorMessage="Enter Quotes No" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">Quote Date:</td>
                                    <td>
                                        <asp:TextBox ID="txtQuoteDate" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="txtQuoteDate_CalendarExtender" runat="server"
                                            Enabled="True" TargetControlID="txtQuoteDate">
                                        </asp:CalendarExtender>
                                    </td>
                                    <td class="lbldiv">Valid Till
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtValidTill" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="txtValidTill_CalendarExtender" runat="server"
                                            Enabled="True" TargetControlID="txtValidTill">
                                        </asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="lbldiv">&nbsp;</td>
                                    <td>
                                        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/images/save_btn.jpg"
                                            OnClick="ImageButton1_Click" ValidationGroup="A" />
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2">
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                            ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" Width="196px" />
                                    </td>
                                </tr>
                            </table>

                            <hr />
                            <b>Select Item-Category: </b>
                            <asp:DropDownList ID="cboCategory" runat="server" AutoPostBack="true" OnSelectedIndexChanged="cboCategory_Selected"
                                class="dropdownbox" AppendDataBoundItems="True" CssClass="dropdownlist">
                                <asp:ListItem>Select</asp:ListItem>
                            </asp:DropDownList>
                            <br />
                            <br />
                            <asp:GridView runat="server" ID="gvDetails" ShowFooter="true" Width="70%"
                                PageSize="10" AutoGenerateColumns="false"
                                HeaderStyle-CssClass="header">
                                <Columns>
                                    <asp:TemplateField HeaderText="">
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" ID="chkSelect" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ItemCode" HeaderText="Item Code" />
                                    <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                                    <asp:TemplateField HeaderText="Selling Price">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtSellingPrice" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Discount">
                                        <ItemTemplate>
                                            <asp:TextBox ID="txtDiscount" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                            </asp:GridView>

                        </asp:Panel>
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

