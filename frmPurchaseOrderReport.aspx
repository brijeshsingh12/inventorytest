<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmPurchaseOrderReport, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <h2>Purchase Order Report</h2>
    <div align="center">
        <asp:Panel ID="Panel2" runat="server">
            <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Export To Excel</asp:LinkButton>
            <br />
            <div>
                <asp:RadioButtonList ID="radioOption" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radioOption_SelectedIndexChanged"
                    RepeatDirection="Horizontal" Width="357px" Font-Bold="True">
                    <asp:ListItem>PO Issue</asp:ListItem>
                    <asp:ListItem>PO Receive</asp:ListItem>
                    <asp:ListItem>PO Return</asp:ListItem>
                </asp:RadioButtonList>
                <br />
            </div>
        </asp:Panel>
        <br />
        <table id="IssueTbl"  runat="server" align="center" style="color: #5e9559; display: none">
            <tr>
                <td colspan="2">
                    <h3 align="center">PO Issue Report</h3>
                </td>
            </tr>
            <tr valign="top">
                <td align="left" colspan="2">
                    <table style="width: 100%; color: #5e9559">
                        <tr>
                            <td class="lbldiv">From Date:
                            </td>
                            <td class="style2">
                                <asp:TextBox ID="txtFromDate_Issue" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="txtFromDate_Issue_CalendarExtender" runat="server" Enabled="True"
                                    Format="yyyy-MM-dd" TargetControlID="txtFromDate_Issue">
                                </asp:CalendarExtender>
                            </td>
                            <td class="lbldiv">To Date:
                            </td>
                            <td style="width: 200px">
                                <asp:TextBox ID="txtToDate_Issue" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="txtToDate_Issue_CalendarExtender" runat="server" Enabled="True"
                                    Format="yyyy-MM-dd" TargetControlID="txtToDate_Issue">
                                </asp:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td  class="lbldiv">Select Supplier:
                            </td>
                            <td colspan="3">
                                <asp:DropDownList ID="dropSupplier" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                    Width="145px" CssClass="dropdownlist">
                                    <asp:ListItem>Select</asp:ListItem>
                                </asp:DropDownList>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="cmdShowIssue" CssClass="button_submit" runat="server" OnClick="cmdShowIssue_Click" Text="Show" />
                            </td>
                            <td colspan="3">&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table id="ReturnTbl"  runat="server" align="center" style="color: #5e9559; display: none">
            <tr>
                <td colspan="2">
                    <h3 align="center">PO Return Report</h3>
                </td>
            </tr>
            <tr valign="top">
                <td align="left" class="style1" colspan="2">
                    <table style="width: 100%;">
                        <tr>
                            <td  class="lbldiv">From Date:
                            </td>
                            <td>
                                <asp:TextBox ID="txtFrom_Return" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txtFrom_Return">
                                </asp:CalendarExtender>
                            </td>
                            <td  class="lbldiv">To Date:
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo_Return" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="True" TargetControlID="txtTo_Return">
                                </asp:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="4">&nbsp;
                                        <asp:Button ID="cmdShowReturn" CssClass="button_submit" runat="server" OnClick="cmdShowReturn_Click"
                                            Text="Show" />
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <table id="ReceiveTbl"  runat="server" align="center" style="color: #5e9559; display: none">
            <tr>
                <td colspan="2">
                    <h3 align="center">PO Recieve Report</h3>
                </td>
            </tr>
            <tr valign="top">
                <td align="left" class="style1" colspan="2">
                    <table style="width: 100%;" align="center">
                        <tr>
                            <td class="lbldiv">From Date:
                            </td>
                            <td>
                                <asp:TextBox ID="txtFrom_Receive" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender3" runat="server" Enabled="True" TargetControlID="txtFrom_Receive">
                                </asp:CalendarExtender>
                            </td>
                            <td class="lbldiv">To Date:
                            </td>
                            <td>
                                <asp:TextBox ID="txtTo_Receive" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="CalendarExtender4" runat="server" Enabled="True" TargetControlID="txtTo_Receive">
                                </asp:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <asp:Button ID="cmdShowReceive" CssClass="button_submit" runat="server" OnClick="cmdShowReceive_Click" Text="Show" />
                            </td>
                            <td colspan="3">&nbsp;
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
        </table>
        <div style="width: 100%; overflow: scroll;">
            <table align="center" style="width: 100%;">
                <tr>
                    <td align="center">
                        <asp:GridView ID="gridDetails" runat="server" AutoGenerateColumns="False"
                            EmptyDataText="Data Not Found"
                             CssClass="mydatagrid" 
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" 
                                RowStyle-CssClass="rows">
                            <Columns>
                                <asp:TemplateField HeaderText="Bill No" ControlStyle-ForeColor="Red">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButtonBillNo" runat="server"
                                            OnClick="LinkButtonBillNo_Click" Text='<%# Eval("BillNo") %>'
                                            ToolTip="View All Details" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:BoundField DataField="Date" HeaderText="Date" />
                                <asp:BoundField DataField="SupplierName" HeaderText="SupplierName" />
                                <asp:BoundField DataField="Remark" HeaderText="Remark" />
                                <asp:BoundField DataField="DeliveryDate" HeaderText="DeliveryDate" />
                                <asp:BoundField DataField="DeliveryTo" HeaderText="DeliveryTo" />
                            </Columns>                          
                        </asp:GridView>
                        <br />
                        <asp:GridView ID="GridView1" runat="server" CssClass="mydatagrid" 
                                PagerStyle-CssClass="pager"
                                HeaderStyle-CssClass="header" 
                                RowStyle-CssClass="rows">
                        </asp:GridView>
                        <br />
                        <br />
                    </td>
                </tr>
            </table>
        </div>

    </div>

</asp:Content>
