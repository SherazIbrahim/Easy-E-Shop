<%@ Page Title="" Language="C#" MasterPageFile="~/productmaster.Master" AutoEventWireup="true" CodeBehind="productimage.aspx.cs" Inherits="Easy_E_Shop.productimage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Products
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
           
              <a href="Sales.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-cart-arrow-down"></i>
              <p>
                   Sale/Purchase Products
              </p>
            </a>
         
          </li>
             <li class="nav-item has-treeview menu-open">
           
              <a href="#" class="nav-link active">
              <i class="nav-icon fa fa-fw far fa-image""></i>
              <p>
                   Update Product Image
              </p>
            </a>
         
          </li>
    <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-fw fas fa-asterisk"></i>
              <p>
 View Details
               </p>
            </a>
         
          </li>
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Update Images Of Products
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <table class="w-100">
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td style="width: 129px">&nbsp;</td>
                <td style="width: 441px">&nbsp;</td>
                <td style="width: 109px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td style="width: 129px">
                    <asp:Label ID="Label1" runat="server" Text="Product Title"></asp:Label>
                </td>
                <td style="width: 441px">
                    <asp:DropDownList ID="dtitles" runat="server" style="margin-bottom: 14" Width="467px">
                    </asp:DropDownList>
                </td>
                <td style="width: 109px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td style="width: 129px">
                    <asp:Label ID="Label2" runat="server" Text="Product Image"></asp:Label>
                </td>
                <td style="width: 441px">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                </td>
                <td style="width: 109px">
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Update" Width="93px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 130px">&nbsp;</td>
                <td style="width: 129px">&nbsp;</td>
                <td style="width: 441px">
                    <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
                <td style="width: 109px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

</asp:Content>
