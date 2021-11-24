<%@ Page Title="" Language="C#" MasterPageFile="~/productmaster.Master" AutoEventWireup="true" CodeBehind="Sales.aspx.cs" Inherits="Easy_E_Shop.Sales" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Sale/Purchase Products
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
            <a href="ProductDefault.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-shopping-cart"></i>
              <p>
 Product Registration
               </p>
            </a>
         
          </li>
<li class="nav-item has-treeview menu-open">
           
              <a href="#" class="nav-link active">
              <i class="nav-icon fa fa-fw fa-cart-arrow-down"></i>
              <p>
                   Sale/Purchase Products
              </p>
            </a>
         
          </li>
  
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Sale/Purchase Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
     <form id="form1" runat="server">
    <table style="width: 100%; height: 179px;">
        <tr>
            <td style="width: 50px; height: 90px">&nbsp;</td>
            <td style="width: 206px; height: 90px">
                <asp:Label ID="Label7" runat="server" Text="Product Id"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtid" runat="server" Width="508px" TextMode="Number" Enabled="False"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 206px; height: 90px">
                <asp:Label ID="Label2" runat="server" Text="Product Title"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:DropDownList ID="dtitle" runat="server" Height="33px" Width="506px">
                        </asp:DropDownList>
                    </td>
            <td style="height: 55px; width: 578px;">
                <asp:Button ID="btnloadinfo" runat="server" OnClick="btnload_Click" Text="Load Info" Width="81px" style="height: 33px" />
                    </td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 206px; height: 90px">
                <asp:Label ID="Label3" runat="server" Text="Product Price"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtprice" runat="server" Width="508px" TextMode="Number" Enabled="False"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 206px; height: 90px">
                <asp:Label ID="Label5" runat="server" Text="Product Stock"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtstock" runat="server" Width="508px" TextMode="Number" Enabled="False"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px">&nbsp;</td>
            <td style="width: 206px; height: 90px">
                <asp:Label ID="Label6" runat="server" Text="Quantity (To Sell/Purchase)"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtquantity" runat="server" Width="508px" TextMode="Number"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px">&nbsp;</td>
            <td style="width: 206px; height: 90px">
                <asp:Label ID="Label9" runat="server" Text="Discount"></asp:Label>
            </td>
            <td style="height: 55px; width: 578px;">
                        <asp:TextBox ID="txtdiscount" runat="server" Width="508px" TextMode="Number"></asp:TextBox>
                    </td>
            <td style="height: 55px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 206px; height: 90px"></td>
            <td style="height: 64px; width: 578px; margin-left: 40px;">
                &nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnsell" runat="server" OnClick="btnsell_Click" Text="Sell" Width="81px" />
&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="btnadd" runat="server" OnClick="btnpurchase_Click" Text="Purchase" Width="81px" />
&nbsp;&nbsp;&nbsp; <asp:Button ID="btnclear" runat="server" OnClick="btnclear_Click" Text="Clear" Width="81px" />
&nbsp;</td>
            <td style="height: 64px; width: 578px; margin-left: 40px;">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px"></td>
            <td style="width: 206px; height: 90px"></td>
            <td style="height: 70px; width: 578px;">
                        <asp:Label ID="Message" runat="server"></asp:Label>
             </td>
            <td style="height: 70px; width: 578px;">
                        &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 50px; height: 90px">&nbsp;</td>
            <td style="height: 90px" colspan="3">
                <asp:Label ID="Label10" runat="server" ForeColor="#990000" Text="Sold"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 50px; height: 229px"></td>
            <td style="height: 229px" colspan="3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="222px" style="margin-right: 17px" Width="799px" AutoGenerateColumns="false">
                   
                    <Columns>
                       
                        <asp:BoundField HeaderText="Sold By" DataField="u_username" />
                        <asp:BoundField HeaderText="Product" DataField="prdTitle" />
                        <asp:BoundField HeaderText="Quantity" DataField="prdquantity" />
                        <asp:BoundField HeaderText="Cost" DataField="total_price" />
                        <asp:BoundField HeaderText="Discount" DataField="discount" />

                    </Columns>
                    
                    
                    <AlternatingRowStyle BackColor="White" />
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
        <tr>
            <td style="width: 50px; height: 56px"></td>
            <td style="height: 56px" colspan="3">
                <asp:Label ID="Label11" runat="server" ForeColor="#990000" Text="Bought"></asp:Label>
            </td>
        </tr>
        <tr>
            <td style="width: 50px; height: 229px">&nbsp;</td>
            <td style="height: 229px" colspan="3">
                <asp:GridView ID="GridView2" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" Height="216px" Width="796px" AutoGenerateColumns="false" style="margin-left: 0px">
                   
                    <Columns>
                       
                        <asp:BoundField HeaderText="Purchased By" DataField="u_username" />
                        <asp:BoundField HeaderText="Product" DataField="prdTitle" />
                        <asp:BoundField HeaderText="Quantity" DataField="prdquantity" />
                        <asp:BoundField HeaderText="Cost" DataField="total_price" />
                        <asp:BoundField HeaderText="Discount" DataField="discount" />

                    </Columns>
                    
                    <AlternatingRowStyle BackColor="White" />
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
