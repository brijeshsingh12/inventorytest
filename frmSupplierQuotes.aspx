<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmSupplierQuotes, Root" %>

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
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Supplier / Item Mapping">
                            <table class="table">
                                <tr>
                                    <td class="lbldiv">Supplier Code:
                                    </td>
                                    <td>
                                        <asp:DropDownList ID="dropSupplierCode" runat="server" AutoPostBack="true"
                                            class="dropdownbox" AppendDataBoundItems="True" CssClass="dropdownlist" OnSelectedIndexChanged="dropSupplierCode_SelectedIndexChanged">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="dropSupplierCode"
                                            Display="Dynamic" ErrorMessage="Select Supplier code" ValidationGroup="A">*</asp:RequiredFieldValidator>
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

                            <asp:Button ID="btnAssignedItems" runat="server" OnClick="btnAssignedItems_Click" Text="Assign Item" />

                            <br />
                            <table style="width:100%">
                                <tr>
                                    <td  style="width:50%">
                                         <asp:GridView runat="server" ID="gvNotMapping" ShowFooter="true" Width="70%"
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
                                            </Columns>
                            </asp:GridView>
                                    </td>
                                    <td  style="width:50%">
                                         <asp:GridView runat="server" ID="gvMapping" ShowFooter="true" Width="70%"
                                        PageSize="10" AutoGenerateColumns="false"
                                        HeaderStyle-CssClass="header">
                                        <Columns>
                                            <asp:BoundField DataField="ItemCode" HeaderText="Item Code" />
                                            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                                            <asp:TemplateField HeaderText="Purchase Price">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtPurchasePrice" Value='<%# Eval("PurchasePrice") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Discount">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtDiscount"  Value='<%# Eval("Discount") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Min. Order Qty">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtMinOrderQty"  Value='<%# Eval("MinOrderQty") %>' runat="server" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    </td>
                                </tr>
                            </table>
                           

                        </asp:Panel>
                        <br />
                    </td>
                </tr>
            </table>
        </ContentTemplate>
    </asp:UpdatePanel>
</asp:Content>

