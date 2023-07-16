<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmExpensesRegister, Root" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
     <asp:UpdateProgress ID="UpdWaitImage" runat="server" DynamicLayout="true" AssociatedUpdatePanelID="UpdatePanel1">
            <ProgressTemplate>
                 <div class="overlay"> 
                     <div class="center">
                <asp:Image ID="imgProgress" ImageUrl="~/asset/loader.gif" runat="server" />
                Please Wait...
                         </div>
                     </div>
            </ProgressTemplate>
        </asp:UpdateProgress>

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <table style="width: 100%;">
                <tr>
                    <td align="center" class="style1">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="Expenditure Register"
                            Width="927px">
                            <table align="center" class="table" style="width: 100%;">
                                <tr align="left">
                                    <td align="left" valign="top">
                                        <table style="width: 100%;">
                                            <tr>
                                                <td>&nbsp;</td>
                                                <td>&nbsp;</td>
                                                <td colspan="2" rowspan="4" valign="top">
                                                    <div id="Check" runat="server" style="display: none">
                                                        <table style="width: 100%; height: 72px;">
                                                            <tr>
                                                                <td class="lbldiv">
                                                                   Check Number:
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtCheckNo" runat="server" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td  class="lbldiv">Date:
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtCheckDate" runat="server" CssClass="textbox" Width="129px"></asp:TextBox>
                                                                    <asp:CalendarExtender ID="txtCheckDate_CalendarExtender" runat="server"
                                                                        Enabled="True" TargetControlID="txtCheckDate">
                                                                    </asp:CalendarExtender>
                                                                </td>
                                                                <td>&nbsp;
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td  class="lbldiv">
                                                                    Bank:
                                                                </td>
                                                                <td>
                                                                    <asp:TextBox ID="txtBank" runat="server" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td>&nbsp;
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <br />
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="lbldiv">Date:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtDate" runat="server" CssClass="textbox"></asp:TextBox>
                                                    <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server"
                                                        Enabled="True" TargetControlID="txtDate">
                                                    </asp:CalendarExtender>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                        ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Enter Date"
                                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td  class="lbldiv">Claim By:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="dropSupplier" runat="server" AppendDataBoundItems="True"
                                                        AutoPostBack="True" CssClass="textbox"
                                                        OnSelectedIndexChanged="dropSupplier_SelectedIndexChanged">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                        ControlToValidate="dropSupplier" Display="Dynamic"
                                                        ErrorMessage="SelectSupplier Code" InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td  class="lbldiv">Amount Type:
                                                </td>
                                                <td>
                                                    <asp:DropDownList ID="dropAmountType" runat="server" AutoPostBack="True"
                                                        CssClass="textbox" OnSelectedIndexChanged="dropAmountType_SelectedIndexChanged">
                                                        <asp:ListItem>Select</asp:ListItem>
                                                        <asp:ListItem>Cash</asp:ListItem>
                                                        <asp:ListItem>Check</asp:ListItem>
                                                    </asp:DropDownList>
                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                        ControlToValidate="dropAmountType" Display="Dynamic"
                                                        ErrorMessage="Select Amount Type" InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                </td>
                                            </tr>
                                            </table>
                                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC"
                                                        BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4"
                                                        CellSpacing="2" Font-Size="Small" ForeColor="Black" Width="100%">
                                                        <FooterStyle BackColor="#CCCCCC" />
                                                        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White"
                                                            HorizontalAlign="Justify" />
                                                        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                                                        <RowStyle BackColor="White" />
                                                        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                                        <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                                        <SortedAscendingHeaderStyle BackColor="#808080" />
                                                        <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                                        <SortedDescendingHeaderStyle BackColor="#383838" />
                                                    </asp:GridView>
                                        <table>    
                                        <tr valign="top">
                                                <td align="left" colspan="4">&nbsp;</td>
                                            </tr>
                                            <tr valign="top">
                                                <td align="left" colspan="4"
                                                    style="font-size: large; background-color: #CCFFCC">
                                                    <span class="style3"><strong>Expenses Details</strong></span>
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td  class="lbldiv">Expenses:
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtExpenses" runat="server" CssClass="textbox"></asp:TextBox>
                                                    </td>
                                                </tr>
                                            <tr>
                                              <td  class="lbldiv">  Amount: </td>
                                                <td>
                                            <asp:TextBox ID="txtAmounts" runat="server" CssClass="textbox"></asp:TextBox>
                                                    <asp:FilteredTextBoxExtender ID="txtAmounts_FilteredTextBoxExtender"
                                                        runat="server" Enabled="True" FilterType="Numbers" TargetControlID="txtAmounts">
                                                    </asp:FilteredTextBoxExtender>
                                                     <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add"
                                                Widt6h="4px" />
                                             </td>
                                                </tr>
                                           
                                             
                                            
                                            <tr valign="top">
                                                <td colspan="4">
                                                    <asp:GridView ID="GridView2" runat="server"
                                                        OnSelectedIndexChanged="GridView2_SelectedIndexChanged"
                                                        CssClass="mydatagrid"
                                                        PagerStyle-CssClass="pager"
                                                        HeaderStyle-CssClass="header"
                                                        RowStyle-CssClass="rows">
                                                        <Columns>
                                                            <asp:TemplateField>
                                                                <ItemTemplate>
                                                                    <asp:Button ID="Button2" runat="server" CommandName="Select" Text="Remove" />
                                                                </ItemTemplate>
                                                            </asp:TemplateField>
                                                        </Columns>
                                                    </asp:GridView>
                                                </td>
                                            </tr>
                                          
                                            <tr valign="top">
                                                <td>Remark:&nbsp;&nbsp;&nbsp;
                                                </td>
                                                <td>
                                                    <asp:TextBox ID="txtRemark" runat="server" CssClass="textbox" Height="58px"
                                                        TextMode="MultiLine" Width="252px"></asp:TextBox>
                                                </td>
                                                <td>&nbsp;
                                                </td>
                                                <td>&nbsp;
                                                </td>
                                            </tr>
                                            <tr valign="top">
                                                <td>
                                                    <asp:ImageButton ID="ImageButton1" runat="server"
                                                        ImageUrl="~/images/save_btn.jpg" OnClick="ImageButton1_Click"
                                                        ValidationGroup="A" />
                                                </td>
                                                <td>
                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" Width="199px" />
                                                </td>
                                                <td>&nbsp;
                                                </td>
                                                <td>&nbsp;
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <br />
                    </td>
                </tr>
            </table>
            <br />
            <div>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>
