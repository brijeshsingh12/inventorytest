<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_IncomeRegister, Root" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
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
    <table style="width:100%;" align="center">
        <tr>
            <td width="60%" align="center">
                <asp:Panel ID="Panel1" runat="server" GroupingText="Income Register" 
                    Width="923px">
                    <table align="center" class="table" style="width: 100%;">
                        <tr>
                            <td align="left" valign="top">
                                <table style="width:100%;">
                                    <tr>
                                        <td class="lbldiv">
                                            Date:&nbsp;</td>
                                        <td class="style1">
                                            <asp:TextBox ID="txtDate" runat="server" CssClass="textbox" ></asp:TextBox>
                                            <asp:CalendarExtender ID="txtDate_CalendarExtender" runat="server" 
                                                Enabled="True" TargetControlID="txtDate">
                                            </asp:CalendarExtender>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                                ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Enter Date" 
                                                ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td  class="lbldiv">
                                            Agent Code:</td>
                                        <td>
                                            <asp:DropDownList ID="dropPartycode" runat="server" AppendDataBoundItems="True" 
                                                AutoPostBack="True" CssClass="dropdownlist" 
                                                onselectedindexchanged="dropPartycode_SelectedIndexChanged" >
                                                <asp:ListItem>Select</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                                ControlToValidate="dropPartycode" Display="Dynamic" 
                                                ErrorMessage="Select Agent Code" InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td  class="lbldiv">
                                            Amount Type&nbsp;</td>
                                        <td class="style1">
                                            <asp:DropDownList ID="dropAmountType" runat="server" AutoPostBack="True" 
                                                class="dropdownbox" CssClass="dropdownlist" 
                                                onselectedindexchanged="dropAmountType_SelectedIndexChanged" >
                                                <asp:ListItem>Select</asp:ListItem>
                                                <asp:ListItem>Cash</asp:ListItem>
                                                <asp:ListItem>Check</asp:ListItem>
                                            </asp:DropDownList>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                                ControlToValidate="dropAmountType" Display="Dynamic" 
                                                ErrorMessage="Select Amount Type" InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                        </td>
                                        <td>
                                            <asp:Label ID="Label1" runat="server" Text="Amount:"></asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="txtAmount" runat="server" CssClass="textbox" ></asp:TextBox>
                                        </td>
                                    </tr>
                                    <tr valign="top">
                                        <td valign="top"  class="lbldiv">
                                            Remark</td>
                                        <td class="style1">
                                            <asp:TextBox ID="txtRemark" runat="server" CssClass="textbox" Height="58px" 
                                                TextMode="MultiLine" ></asp:TextBox>
                                        </td>
                                        <td align="left" colspan="2">
                                           
                                            <div ID="Check" runat="server" style="display:none">
                                                <table>
                                                <tr>
                                                    <td>Check Number:</td>
                                                    <td>
                                                       <asp:TextBox ID="txtCheckNo" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>Check Date:</td>
                                                    <td>
                                                           <asp:TextBox ID="txtCheckDate" runat="server" Width="143px"></asp:TextBox>
                                                <asp:CalendarExtender ID="txtCheckDate_CalendarExtender" runat="server" 
                                                    Enabled="True" TargetControlID="txtCheckDate">
                                                </asp:CalendarExtender>
                                                    </td>
                                                </tr>
                                                 <tr>
                                                    <td>Bank Name:</td>
                                                    <td><asp:TextBox ID="txtBank" runat="server"></asp:TextBox></td>
                                                </tr>
                                            </table>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <asp:ImageButton ID="ImageButton1" runat="server" 
                                                ImageUrl="~/images/save_btn.jpg" onclick="ImageButton1_Click" 
                                                ValidationGroup="A" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td colspan="4">
                                            <asp:GridView ID="GridView1" runat="server" BackColor="LightGoldenrodYellow" 
                                                BorderColor="Tan" BorderWidth="1px" CellPadding="2" Font-Size="Small" 
                                                ForeColor="Black" GridLines="None" Width="100%">
                                                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                                                <FooterStyle BackColor="Tan" />
                                                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                                                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                                                    HorizontalAlign="Center" />
                                                <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                                                <SortedAscendingCellStyle BackColor="#FAFAE7" />
                                                <SortedAscendingHeaderStyle BackColor="#DAC09E" />
                                                <SortedDescendingCellStyle BackColor="#E1DB9C" />
                                                <SortedDescendingHeaderStyle BackColor="#C2A47B" />
                                            </asp:GridView>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style1">
                                            &nbsp;</td>
                                        <td align="left" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style1">
                                            &nbsp;</td>
                                        <td align="left" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td>
                                            &nbsp;</td>
                                        <td class="style1">
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                                                ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                        </td>
                                        <td align="left" colspan="2">
                                            &nbsp;</td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </asp:Panel>
            </td>
        </tr>
    </table>
    <br />
<div>
</div>
</ContentTemplate>
    </asp:UpdatePanel>
    
</asp:Content>

