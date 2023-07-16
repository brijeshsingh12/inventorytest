<%@ page title="" language="C#" masterpagefile="~/MasterPageNew.master" autoeventwireup="true" inherits="WebForm_frmItemcreation, Root" %>

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

    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <Triggers>
            <asp:PostBackTrigger ControlID="btnUpload" />
        </Triggers>
        <ContentTemplate>

            <table style="width: 100%;">
                <tr>
                    <td width="60%" valign="top" style="width: 100%">
                        <asp:MultiView ID="MultiView2" runat="server">
                            <asp:View ID="View1" runat="server">
                                <asp:Panel ID="Panel2" runat="server" GroupingText="Item List">
                                    <asp:ImageButton ID="btnAddNew" runat="server" Height="35px"
                                        ImageUrl="~/images/add_new_btn2.jpg" OnClick="btnAddNew_Click" Width="130px" />
                                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True"
                                        AutoGenerateColumns="False" EmptyDataText="Data Not Found"
                                        OnPageIndexChanging="GridView1_PageIndexChanging"
                                        OnRowCommand="GridView1_RowCommand" PageSize="5"
                                        CssClass="mydatagrid"
                                        PagerStyle-CssClass="pager"
                                        HeaderStyle-CssClass="header"
                                        RowStyle-CssClass="rows">
                                        <Columns>
                                            <asp:TemplateField HeaderText="Edit">
                                                <ItemTemplate>
                                                    <asp:HiddenField ID="hidItemCode" Value='<%# Eval("ItemCode") %>' runat="server" />
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
                                                        OnClientClick="if ( !confirm('Are you sure you want to delete this Item?')) return false;"
                                                        ToolTip="Remove Item" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:BoundField DataField="ItemName" HeaderText="Item Name" />
                                            <asp:BoundField DataField="SerialNumber" HeaderText="Serial Number" />
                                            <asp:BoundField DataField="CategoryName" HeaderText="Category" />
                                            <asp:BoundField DataField="SaleListPrice" HeaderText="SaleListPrice" />
                                        </Columns>
                                    </asp:GridView>
                                </asp:Panel>
                            </asp:View>
                            <asp:View ID="View2" runat="server">
                                <asp:Panel ID="Panel1" runat="server">
                                    <table align="center" class="table">
                                        <tr>
                                            <td align="right">&nbsp;</td>
                                        </tr>
                                        <tr>
                                            <td align="center">
                                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True"
                                                    OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                                    RepeatDirection="Horizontal" Width="409px" Font-Bold="False"
                                                    Font-Size="Large" ForeColor="#660033">
                                                    <asp:ListItem>Bulk Upload</asp:ListItem>
                                                    <asp:ListItem>Single Entry</asp:ListItem>
                                                </asp:RadioButtonList>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <asp:MultiView ID="MultiView1" runat="server">
                                                    <asp:View ID="ProductUploadExcel" runat="server">
                                                        <table align="center" class="table" id="uploadsection" runat="server">
                                                            <tr>
                                                                <td>Upload File:
                                                                </td>
                                                                <td>
                                                                    <asp:FileUpload ID="FileUpload1" runat="server" />
                                                                </td>
                                                                <td>
                                                                    <asp:Button ID="btnUpload" runat="server" OnClick="btnUpload_Click"
                                                                        Text="Upload" CssClass="button_submit" ValidationGroup="A" />
   
                                                                    <a cssclass="button_submit" href="ItemUploadFormatFile/ItemMaster.xlsx">Download Format</a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                        <asp:Label ID="lblmsg" runat="server" Text="" Font-Bold="true" ForeColor="Red"></asp:Label>
                                                        <br />
                                                        <table style="width: 100%;">
                                                            <tr>
                                                                <td colspan="3">
                                                                    Instructions
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td colspan="3">
                                                                    <b>Follow the instructions carefully before importing the file.</b><br />
                                                                    The columns of the file should be in the following order.
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td>Column Number</td>
                                                                <td>Column Name</td>
                                                                <td>Instruction</td>
                                                            </tr>
                                                            <tr>
                                                                <td>1</td>
                                                                <td>Item Code (Required)</td>
                                                                <td>Code of Product (Please put next Itemcode)</td>
                                                            </tr>

                                                            <tr>
                                                                <td>2</td>
                                                                <td>Item Name (Required)</td>
                                                                <td>Name of Product</td>
                                                            </tr>
                                                             <tr>
                                                                <td>3</td>
                                                                <td>Serial Number (Optional)</td>
                                                                <td>Serial Number of Product</td>
                                                            </tr>
                                                             <tr>
                                                                <td>4</td>
                                                                <td>Colour (Optional)</td>
                                                                <td>Colour of Product</td>
                                                            </tr>
                                                            <tr>
                                                                <td>5</td>
                                                                <td>Category (Required)</td>
                                                                <td>Category code of Product (please see Category setup)</td>
                                                            </tr>
                                                            <tr>
                                                                <td>6</td>
                                                                <td>Sub-Category (Optional)</td>
                                                                <td>Sub-Category id of Product (please see sub-Category setup)</td>
                                                            </tr>
                                                             <tr>
                                                                <td>7</td>
                                                                <td>Replacement Cost (Optional)</td>
                                                                <td>Replace cost of Product</td>
                                                            </tr>
                                                             <tr>
                                                                <td>8</td>
                                                                <td>SGST (Optional)</td>
                                                                <td>Enter in digit format</td>
                                                            </tr>
                                                             <tr>
                                                                <td>9</td>
                                                                <td>CGST (Optional)</td>
                                                                <td>Enter in digit format</td>
                                                            </tr>
                                                            <tr>
                                                                <td>10</td>
                                                                <td>IGST (Optional)</td>
                                                                <td>Enter in digit format</td>
                                                            </tr>
                                                             <tr>
                                                                <td>11</td>
                                                                <td>Warrenty (Optional)</td>
                                                                <td>Enter in digit format</td>
                                                            </tr>
                                                               <tr>
                                                                <td>12</td>
                                                                <td>HSN Code (Optional)</td>
                                                                <td>HSN Code of Product</td>
                                                            </tr>
                                                              <tr>
                                                                <td>13</td>
                                                                <td>Purchase Unit (Optional)</td>
                                                                <td>Purchase Unit of Product (please see options in item master form)</td>
                                                            </tr>
                                                              <tr>
                                                                <td>14</td>
                                                                <td>Item Sale Unit (Required)</td>
                                                                <td>Item Sale Unit of Product (please see options in item master form)</td>
                                                            </tr>
                                                                <tr>
                                                                <td>15</td>
                                                                <td>items Per Pack (Optional)</td>
                                                                <td>items Per Pack of Product (It is only digit format)</td>
                                                            </tr>
                                                                <tr>
                                                                <td>16</td>
                                                                <td>Packs Per Case (Optional)</td>
                                                                <td>Packs Per Case of Product (It is only digit format)</td>
                                                            </tr>
                                                            <tr>
                                                                <td>17</td>
                                                                <td>Min Inventory Level (Optional)</td>
                                                                <td>Min Inventory Level of Product (It is only digit format)</td>
                                                            </tr>
                                                             <tr>
                                                                <td>18</td>
                                                                <td>MRP Price (Required)</td>
                                                                <td>Price / MRP of Product (It is only digit format)</td>
                                                            </tr>
                                                            <tr>
                                                                <td>18</td>
                                                                <td>Weight (Optional)</td>
                                                                <td>Weight of Product</td>
                                                            </tr>
                                                               <tr>
                                                                <td>19</td>
                                                                <td>Opening Stock (Required)</td>
                                                                <td>Opening Stock of Product</td>
                                                            </tr>
                                                        </table>
                                                    </asp:View>
                                                    <asp:View ID="UplaodSingleProduct" runat="server">
                                                        <asp:ImageButton ID="btnBack" runat="server" BackColor="White" Height="38px"
                                                            ImageUrl="~/images/Back2.jpg" OnClick="btnBack_Click" Width="100px" />
                                                        <table class="table">
                                                            <tr>
                                                                <td class="lbldiv">Item Code</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtItemCode" runat="server" CssClass="textbox"
                                                                        Enabled="False"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                                                        ControlToValidate="txtItemCode" Display="Dynamic"
                                                                        ErrorMessage="Enter Item Code" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                </td>
                                                                <td class="lbldiv">&nbsp;</td>
                                                                <td>&nbsp;</td>
                                                            </tr>

                                                            <tr>
                                                                <td class="lbldiv">Item Name:</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtItemName" runat="server" CssClass="textbox"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                                                        ControlToValidate="txtItemName" Display="Dynamic"
                                                                        ErrorMessage="Enter Item Name" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                </td>
                                                                <td class="lbldiv">Serial Number</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtSerial" runat="server" CssClass="textbox"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                                                        ControlToValidate="txtSerial" Display="Dynamic" ErrorMessage="Enter Serial No"
                                                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Colour</td>
                                                                <td class="style1">
                                                                    <asp:DropDownList ID="dropColour" runat="server" CssClass="dropdownlist">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                        <asp:ListItem>Blue</asp:ListItem>
                                                                        <asp:ListItem>Orange</asp:ListItem>
                                                                        <asp:ListItem>Red</asp:ListItem>
                                                                        <asp:ListItem>Black</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td class="lbldiv">Category</td>
                                                                <td>
                                                                    <asp:DropDownList ID="dropCategory" runat="server" AppendDataBoundItems="True"
                                                                        class="dropdownbox" CssClass="dropdownlist" AutoPostBack="True" OnSelectedIndexChanged="dropCategory_SelectedIndexChanged">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
                                                                        ControlToValidate="dropCategory" Display="None" ErrorMessage="Select Category"
                                                                        InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Sub-Category</td>
                                                                <td class="style1">
                                                                    <asp:DropDownList ID="dropSubCategory" runat="server" AppendDataBoundItems="True"
                                                                        class="dropdownbox" CssClass="dropdownlist">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
                                                                        ControlToValidate="dropSubCategory" Display="None" ErrorMessage="Select Sub-Category"
                                                                        InitialValue="Select" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                </td>
                                                                <td class="lbldiv">Replacement Cost:</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtReplacement" runat="server"
                                                                        CssClass="textbox"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server"
                                                                        ControlToValidate="txtReplacement" Display="Dynamic"
                                                                        ErrorMessage="Enter Replacement Cost" ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">SGST(%)</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtSGST" runat="server" CssClass="textbox"></asp:TextBox>
                                                                    <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                                        ControlToValidate="txtSGST" Display="Dynamic"
                                                                        ErrorMessage="Enter Replacement Cost" ValidationGroup="A">*</asp:RequiredFieldValidator>--%>
                                                                    <br />
                                                                </td>
                                                                <td class="lbldiv">CGST(%):</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtCGST" runat="server" CssClass="textbox"></asp:TextBox>
                                                                    <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server"
                                                                        ControlToValidate="CGST" Display="Dynamic"
                                                                        ErrorMessage="Enter Replacement Cost" ValidationGroup="A">*</asp:RequiredFieldValidator>--%>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">IGST(%)</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtIGST" runat="server" CssClass="textbox"></asp:TextBox>
                                                                    <%--   <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
                                                                        ControlToValidate="txtSGST" Display="Dynamic"
                                                                        ErrorMessage="Enter Replacement Cost" ValidationGroup="A">*</asp:RequiredFieldValidator>--%>
                                                                    <br />
                                                                </td>
                                                            </tr>

                                                            <tr>
                                                                <hr />
                                                                <td class="lbldiv">Warranty(Months)</td>
                                                                <td class="style1">
                                                                    <asp:DropDownList ID="dropWarrenty" runat="server" class="dropdownbox"
                                                                        CssClass="dropdownlist">
                                                                        <asp:ListItem Value="0">Select</asp:ListItem>
                                                                        <asp:ListItem>1</asp:ListItem>
                                                                        <asp:ListItem>2</asp:ListItem>
                                                                        <asp:ListItem>3</asp:ListItem>
                                                                        <asp:ListItem>4</asp:ListItem>
                                                                        <asp:ListItem>5</asp:ListItem>
                                                                        <asp:ListItem>6</asp:ListItem>
                                                                        <asp:ListItem>7</asp:ListItem>
                                                                        <asp:ListItem>8</asp:ListItem>
                                                                        <asp:ListItem>9</asp:ListItem>
                                                                        <asp:ListItem>10</asp:ListItem>
                                                                        <asp:ListItem>11</asp:ListItem>
                                                                        <asp:ListItem>12</asp:ListItem>
                                                                        <asp:ListItem>13</asp:ListItem>
                                                                        <asp:ListItem>14</asp:ListItem>
                                                                        <asp:ListItem>15</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td class="lbldiv">HSN Code:</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtHSNCode" runat="server" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Item Purchase Unit</td>
                                                                <td class="style1">
                                                                    <asp:DropDownList ID="dropPurchaseUnit" runat="server" class="dropdownbox"
                                                                        CssClass="dropdownlist">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                        <asp:ListItem>Kg</asp:ListItem>
                                                                        <asp:ListItem>Meter</asp:ListItem>
                                                                        <asp:ListItem>cm</asp:ListItem>
                                                                        <asp:ListItem>Gaj</asp:ListItem>
                                                                        <asp:ListItem>Liter</asp:ListItem>
                                                                        <asp:ListItem>Piece</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                                <td class="lbldiv">Item Sale Unit</td>
                                                                <td>
                                                                    <asp:DropDownList ID="dropItemSaleUnit" runat="server" class="dropdownbox"
                                                                        CssClass="dropdownlist">
                                                                        <asp:ListItem>Select</asp:ListItem>
                                                                        <asp:ListItem>Kg</asp:ListItem>
                                                                        <asp:ListItem>Meter</asp:ListItem>
                                                                        <asp:ListItem>cm</asp:ListItem>
                                                                        <asp:ListItem>Gaj</asp:ListItem>
                                                                        <asp:ListItem>Liter</asp:ListItem>
                                                                        <asp:ListItem>Piece</asp:ListItem>
                                                                    </asp:DropDownList>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Cases Per Pallet</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtCasePerPallet" runat="server"
                                                                        CssClass="textbox"></asp:TextBox>
                                                                    <asp:FilteredTextBoxExtender ID="txtCasePerPallet_FilteredTextBoxExtender"
                                                                        runat="server" Enabled="True" FilterType="Numbers"
                                                                        TargetControlID="txtCasePerPallet">
                                                                    </asp:FilteredTextBoxExtender>

                                                                </td>
                                                                <td class="lbldiv">Packs Per Case</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtPackPerCase" runat="server"
                                                                        CssClass="textbox"></asp:TextBox>
                                                                    <asp:FilteredTextBoxExtender ID="txtPackPerCase_FilteredTextBoxExtender"
                                                                        runat="server" Enabled="True" FilterType="Numbers"
                                                                        TargetControlID="txtPackPerCase">
                                                                    </asp:FilteredTextBoxExtender>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Items Per Pack</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtItemPerPack" runat="server"
                                                                        CssClass="textbox"></asp:TextBox>
                                                                    <asp:FilteredTextBoxExtender ID="txtItemPerPack_FilteredTextBoxExtender"
                                                                        runat="server" Enabled="True" FilterType="Numbers"
                                                                        TargetControlID="txtItemPerPack">
                                                                    </asp:FilteredTextBoxExtender>
                                                                </td>
                                                                <td class="lbldiv">Min. Inventory Level</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtMinLevel" runat="server" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Sale List price</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtSaleListPrice" runat="server"
                                                                        CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td class="lbldiv">Cost Price</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtPrice" runat="server" CssClass="textbox"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server"
                                                                        ControlToValidate="txtPrice" Display="Dynamic" ErrorMessage="Enter Price"
                                                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                    <br />
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">Weight:</td>
                                                                <td>
                                                                    <asp:TextBox ID="txtWeight" runat="server" CssClass="textbox"></asp:TextBox>
                                                                </td>
                                                                <td class="lbldiv">Opening Stock</td>
                                                                <td class="style1">
                                                                    <asp:TextBox ID="txtopeningStock" runat="server"
                                                                        CssClass="textbox"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server"
                                                                        ControlToValidate="txtopeningStock" Display="Dynamic" ErrorMessage="Enter Opening Stock"
                                                                        ValidationGroup="A">*</asp:RequiredFieldValidator>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">&nbsp;</td>
                                                                <td colspan="2">&nbsp;<asp:Button ID="btnSave" runat="server" CssClass="button_submit"
                                                                    OnClick="btnsave_Click" Text="Save" ValidationGroup="A" />
                                                                </td>
                                                                <td>&nbsp;</td>
                                                            </tr>
                                                            <tr>
                                                                <td class="lbldiv">&nbsp;</td>
                                                                <td colspan="3">
                                                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server"
                                                                        ShowMessageBox="True" ShowSummary="False" ValidationGroup="A" />
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </asp:View>
                                                </asp:MultiView>
                                            </td>
                                        </tr>
                                    </table>

                                </asp:Panel>
                            </asp:View>
                        </asp:MultiView>

                    </td>
                </tr>
                <tr>
                    <td valign="top" width="60%">&nbsp;</td>
                </tr>
            </table>
            <br />
            <div>

                <br />

            </div>

            <triggers>
            <asp:PostBackTrigger ControlID="FileUpload1" />
         </triggers>

        </ContentTemplate>
    </asp:UpdatePanel>

</asp:Content>

