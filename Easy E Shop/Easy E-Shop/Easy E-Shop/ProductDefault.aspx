<%@ Page Title="" Language="C#" MasterPageFile="~/productmaster.Master" AutoEventWireup="true" CodeBehind="ProductDefault.aspx.cs" Inherits="Easy_E_Shop.ProductDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
     Product Registration
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="selectedpage" runat="server">
     <li class="nav-item has-treeview menu-open">
            <a href="home.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-home"></i>
              <p>
 Home
               </p>
            </a>
         
          </li>
   
    <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fa fa-fw fa-shopping-cart"></i>
              <p>
 Product Registration
               </p>
            </a>
         
          </li>


                   <li class="nav-item has-treeview menu-open">
           
              <a href="Sales.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-cart-arrow-down"></i>
              <p>
                   Sale/Purchase Products
              </p>
            </a>
         
          </li>
      <li class="nav-item has-treeview menu-open">
           
              <a href="productimage.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw far fa-image"></i>
              <p>
                   Update Product Image
              </p>
            </a>
         
          </li>
    <li class="nav-item has-treeview menu-open">
            <a href="viewall.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fas fa-asterisk"></i>
              <p>
 View Details
               </p>
            </a>
         
          </li>
       
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Products Registration
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
      <form id="form1" runat="server">
    <table style="width: 100%; height: 914px;">
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px">
                <asp:Label ID="Label1" runat="server" Text="Product Id"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtid" runat="server" Width="508px"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px">
                <asp:Label ID="Label2" runat="server" Text="Product Title"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txttitle" runat="server" Width="508px"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px">
                <asp:Label ID="Label3" runat="server" Text="Product Price"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtprice" runat="server" Width="508px" TextMode="Number"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px">
                <asp:Label ID="Label4" runat="server" Text="Product Stock"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtstock" runat="server" Width="508px" TextMode="Number"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px">
                <asp:Label ID="Label5" runat="server" Text="Product Expiry"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtexpiry" runat="server" Width="508px" Height="29px"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtexpiry" ErrorMessage="Format: dd-MM-yyyy" ForeColor="Red" ValidationExpression="\d{2}-\d{2}-\d{4}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px">
                <asp:Label ID="Label6" runat="server" Text="Product Manufacturer"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtmanufacturer" runat="server" Width="508px"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px"></td>
            <td style="height: 64px; width: 578px;">
                <asp:Button ID="btnsave" runat="server" OnClick="btnsave_Click" Text="Register" Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnupdate" runat="server" OnClick="btnupdate_Click" Text="Update" Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btndelete" runat="server" OnClick="btndelete_Click" Text="Delete" Width="81px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp; <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Text="Clear" Width="81px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="btnviewall" runat="server" OnClick="btnviewall_Click" Text="View All" Width="81px" />
            &nbsp; 
                </td>
            <td style="height: 64px; width: 578px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 194px; height: 90px"></td>
            <td style="height: 70px; width: 578px;">
                        <asp:Label ID="Message" runat="server"></asp:Label>
                        
             </td>
            <td style="height: 70px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 302px">&nbsp;</td>
            <td style="height: 302px" colspan="3">
                        <asp:GridView ID="GridView1" runat="server" Height="293px" Width="829px" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" GridLines="None" style="margin-bottom: 0px" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField>

                                    <ItemTemplate>
                                        <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Select</asp:LinkButton>
                                    </ItemTemplate>

                                </asp:TemplateField>
                                <asp:BoundField HeaderText ="ID" DataField="prdID" />
                                <asp:BoundField HeaderText ="Title" DataField="prdTitle" />
                                <asp:BoundField HeaderText ="Price" DataField="prdPrice" />
                                <asp:BoundField HeaderText ="Stock" DataField="prdStock" />
                                <asp:BoundField HeaderText ="Expiry" DataField="prdExpiry" />
                                <asp:BoundField HeaderText ="Manufacturer" DataField="prdManufacturer" />
                            </Columns>
                            
                            <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                            <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                            <SortedAscendingCellStyle BackColor="#FDF5AC" />
                            <SortedAscendingHeaderStyle BackColor="#4D0000" />
                            <SortedDescendingCellStyle BackColor="#FCF6C0" />
                            <SortedDescendingHeaderStyle BackColor="#820000" />
                            
                        </asp:GridView>
             </td>
        </tr>
    </table>
</form>
</asp:Content>
