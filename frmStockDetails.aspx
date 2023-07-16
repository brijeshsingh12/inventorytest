<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmStockDetails, Root" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="width: 98%;">
        <tr valign="top">
            <td width="40%" colspan="2" style="width: 100%">
                <asp:Panel ID="Panel3" runat="server" GroupingText="Check Stock Details till Now">
                    <table class="table" style="width: 27%" align="center">
                        <tr>
                            <td align="left">
                                <table style="width: 367px">
                                    <tr>
                                        <td align="left" colspan="3">
                                           
                                            <div id="DivSupplierItem" runat="server">
                                               Select Item:
                                                <asp:DropDownList ID="dropItemCode" runat="server" Width="150px">
                                                </asp:DropDownList>
                                                <br />
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <asp:Button ID="Button1" CssClass="button_submit" runat="server" OnClick="Button1_Click" Text="Check Stock Details till Now" />
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                        <td>
                                            &nbsp;
                                        </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                        EmptyDataText="Data Not Found"
                         PageSize="8"
                            CssClass="mydatagrid" 
                            PagerStyle-CssClass="pager"
                            HeaderStyle-CssClass="header" 
                            RowStyle-CssClass="rows">
                    </asp:GridView>
                </asp:Panel>
            </td>
        </tr>
        <tr valign="top">
            <td width="40%">
                &nbsp;</td>
            <td width="60%" valign="top">
        <asp:Panel ID="Panel2" runat="server" ScrollBars="Horizontal" Width="739px">
        </asp:Panel>
            </td>
        </tr>
    </table>
    </asp:Content>
