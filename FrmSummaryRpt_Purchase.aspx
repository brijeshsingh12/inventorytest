<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_FrmSummaryRpt_Purchase, Root" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br />
            <table class="labelControl" style="width: 43%" align="center" 
        id="IssueTbl" runat="server">
            <tr>
                <td>
                    <h3 align="center">
                        Purchase Summary Report</h3>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr valign="top">
                <td align="left" class="style1">
                    <table style="width: 99%;">
                        <tr>
                            <td style="width:230px">
                                From Date:
                            </td>
                            <td style="width:300px">
                                <asp:TextBox ID="txtFromDate_Issue" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="txtFromDate_Issue_CalendarExtender" runat="server" 
                                    Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtFromDate_Issue">
                                </asp:CalendarExtender>
                            </td>
                            <td style="width:200px">
                                To Date:
                            </td>
                            <td style="width:200px">
                                <asp:TextBox ID="txtToDate_Issue" runat="server" CssClass="textbox"></asp:TextBox>
                                <asp:CalendarExtender ID="txtToDate_Issue_CalendarExtender" runat="server" 
                                    Enabled="True" Format="yyyy-MM-dd" TargetControlID="txtToDate_Issue">
                                </asp:CalendarExtender>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                Select Supplier:
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
                                <asp:Button ID="cmdShowIssue" runat="server" Text="Show" CssClass="button_submit" 
                                    onclick="cmdShowIssue_Click" />
                            </td>
                            <td colspan="3">
            <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click">Export To Excel</asp:LinkButton>
                            </td>
                        </tr>
                        </table>
                </td>
            </tr>
        </table>
<div align="center">
    <table style="width: 99%;" align="center">
        <tr>
            <td align="center">
                <asp:GridView ID="gridDetails" runat="server"                     
                    CssClass="mydatagrid" 
                    PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" 
                    RowStyle-CssClass="rows"
                    EmptyDataText="Data Not Found" 
                    onrowdatabound="gridDetails_RowDataBound" ShowFooter="True">
                    <Columns>
                        <asp:TemplateField  ControlStyle-ForeColor="Red">
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton2" runat="server" onclick="LinkButton2_Click">View current Item Details</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
                <br />
                <asp:GridView ID="GridItemDetails" runat="server" 
                    CssClass="mydatagrid" 
                    PagerStyle-CssClass="pager"
                    HeaderStyle-CssClass="header" 
                    RowStyle-CssClass="rows"
                    CellSpacing="2">
                </asp:GridView>
                <br />
                <br />
                <br />
            </td>
        </tr>
        </table>
        </div>
</asp:Content>

