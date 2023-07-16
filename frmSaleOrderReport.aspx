<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmSaleOrderReport, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <br />
    <table style="width: 100%;">
        <tr>
            <td align="center">
                <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click" Font-Bold="True">Export To Excel</asp:LinkButton>
                <br />
                <asp:RadioButtonList ID="radioOption" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radioOption_SelectedIndexChanged"
                    RepeatDirection="Horizontal" Width="495px" Font-Bold="True">
                    <asp:ListItem>Sale Order Issue</asp:ListItem>
                    <asp:ListItem>Sale Order Ship</asp:ListItem>
                    <asp:ListItem>Sale Order Return</asp:ListItem>
                </asp:RadioButtonList>
                &nbsp;&nbsp; </div>
                <table  runat="server" align="center" style="color: #5e9559; display: none" id="IssueTbl">
                    <tr>
                        <td colspan="2">
                            <h3 align="center">
                                Sale Issue Report</h3>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="left" class="style1" colspan="2">
                            <table style="width: 100%;">
                                <tr>
                                    <td class="lbldiv">
                                        From Date:
                                    </td>
                                    <td style="width: 300px">
                                        <asp:TextBox ID="txtFromDate_Issue" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="txtFromDate_Issue_CalendarExtender" runat="server" Enabled="True"
                                            TargetControlID="txtFromDate_Issue" Format="yyyy-MM-dd">
                                        </asp:CalendarExtender>
                                    </td>
                                    <td class="lbldiv">
                                        To Date:
                                    </td>
                                    <td style="width: 200px">
                                        <asp:TextBox ID="txtToDate_Issue" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="txtToDate_Issue_CalendarExtender" runat="server" Enabled="True"
                                            TargetControlID="txtToDate_Issue" Format="yyyy-MM-dd">
                                        </asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td  class="lbldiv">
                                        Select Supplier:
                                    </td>
                                    <td colspan="3">
                                        <asp:DropDownList ID="dropAgent" runat="server" AppendDataBoundItems="True" AutoPostBack="True"
                                            Width="145px" CssClass="dropdownlist">
                                            <asp:ListItem>Select</asp:ListItem>
                                        </asp:DropDownList>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="cmdShowIssue" CssClass="button_submit" runat="server" Text="Show" OnClick="cmdShowIssue_Click" />
                                    </td>
                                    <td colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table id="ReturnTbl"
                    runat="server"  align="center" style="color: #5e9559; display: none">
                    <tr>
                        <td colspan="2">
                            <h3 align="center">
                                Sale Return Report</h3>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="left" class="style1" colspan="2">
                            <table style="width: 100%;">
                                <tr>
                                    <td  class="lbldiv">
                                        From Date:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFrom_Return" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender1" runat="server" Enabled="True" TargetControlID="txtFrom_Return"
                                            Format="yyyy-MM-dd">
                                        </asp:CalendarExtender>
                                    </td>
                                    <td  class="lbldiv">
                                        To Date:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTo_Return" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender2" runat="server" Enabled="True" TargetControlID="txtTo_Return"
                                            Format="yyyy-MM-dd">
                                        </asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="cmdShowReturn" CssClass="button_submit" runat="server" Text="Show" OnClick="cmdShowReturn_Click" />
                                    </td>
                                    <td colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <table  id="ShippedTbl" runat="server" align="center" style="color: #5e9559; display: none">
                    <tr>
                        <td colspan="2">
                            <h3 align="center">
                                Sale Ship Report</h3>
                        </td>
                    </tr>
                    <tr valign="top">
                        <td align="left" class="style1" colspan="2">
                            <table style="width: 100%;">
                                <tr>
                                    <td  class="lbldiv">
                                        From Date:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtFrom_Shipped" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender3" runat="server" Enabled="True" TargetControlID="txtFrom_Shipped"
                                            Format="yyyy-MM-dd">
                                        </asp:CalendarExtender>
                                    </td>
                                    <td  class="lbldiv">
                                        To Date:
                                    </td>
                                    <td>
                                        <asp:TextBox ID="txtTo_Shipped" runat="server" CssClass="textbox"></asp:TextBox>
                                        <asp:CalendarExtender ID="CalendarExtender4" runat="server" Enabled="True" TargetControlID="txtTo_Shipped"
                                            Format="yyyy-MM-dd">
                                        </asp:CalendarExtender>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        <asp:Button ID="cmdShowShipped" CssClass="button_submit" runat="server" Text="Show" OnClick="cmdShowShipped_Click" />
                                    </td>
                                    <td colspan="3">
                                        &nbsp;
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                </table>
                <div align="center">
                    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" Width="100%">
                        <table style="width: 100%;" align="center">
                            <tr>
                                <td>
                                    <asp:GridView ID="gridDetails" runat="server" EmptyDataText="Data Not Found"
                                        AutoGenerateColumns="False"
                                       CssClass="mydatagrid"
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header"
                                        RowStyle-CssClass="rows">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Bill No"  ControlStyle-ForeColor="Red">
                                                <ItemTemplate>
                                                    <asp:LinkButton ID="LinkButtonBillNo" runat="server" Text='<%# Eval("BillNo") %>'
                                                        ToolTip="View All Details" OnClick="LinkButtonBillNo_Click" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="Date" HeaderText="Date" />
                                            <asp:BoundField DataField="AgentName" HeaderText="AgentName" />
                                            <asp:BoundField DataField="Remark" HeaderText="Remark" />
                                            <asp:BoundField DataField="DeliverDate" HeaderText="DeliverDate" />
                                            <asp:BoundField DataField="DeliverTo" HeaderText="DeliverTo" />
                                        </Columns>
                                    </asp:GridView>
                                    <br />
                                    <asp:GridView ID="GridView1" runat="server"  CssClass="mydatagrid"
                        PagerStyle-CssClass="pager"
                        HeaderStyle-CssClass="header"
                        RowStyle-CssClass="rows">
                                     
                                    </asp:GridView>
                                    <br />
                                    <br />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
            </td>
        </tr>
    </table>
</asp:Content>
