<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="assignaccesslevel.aspx.cs" Inherits="Easy_E_Shop.assignaccesslevel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Access Level Specification
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="selectedpage" runat="server">
    <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link">
              <i class="nav-icon fa fa-fw fa-home"></i>
              <p>
 Home
               </p>
            </a>
         
          </li>
    <li class="nav-item has-treeview menu-open">
           
              <a href="shoppage.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-shopping-cart"></i>
              <p>
                  Online Shopping
              </p>
            </a>
         
          </li>
           <li class="nav-item has-treeview menu-open">
           
              <a href="logout.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-lock"></i>
              <p>
                  Logout
              </p>
            </a>
         
          </li>
     <li class="nav-item has-treeview menu-open">
           
              <a href="UserManagement.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-users"></i>
              <p>
                  User Management
              </p>
            </a>
         
          </li>
      <li class="nav-item has-treeview menu-open">
           
              <a href="assignaccesslevel.aspx" class="nav-link active">
              <i class="nav-icon fa fa-fw fas fa-universal-access"></i>
              <p>
                  Specify Access Level
              </p>
            </a>
         
          </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Access Level 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">

    <form id="form1" runat="server">
        <table style="width:100%;">
            <tr>
                <td style="width: 304px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td style="width: 487px">&nbsp;</td>
                <td style="width: 487px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 304px; height: 69px"></td>
                <td style="width: 304px; height: 69px">
                    <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                </td>
                <td style="width: 487px; height: 69px">
                    <asp:DropDownList ID="dusername" runat="server" Height="40px" Width="387px">
                    </asp:DropDownList>
                </td>
                <td style="width: 487px; height: 69px"></td>
                <td style="height: 69px"></td>
            </tr>
            <tr>
                <td style="width: 304px; height: 59px"></td>
                <td style="width: 304px; height: 59px">
                    <asp:Label ID="Label2" runat="server" Text="Role"></asp:Label>
                </td>
                <td style="width: 487px; height: 59px">
                    <asp:DropDownList ID="drole" runat="server" Height="40px" style="margin-bottom: 12" Width="387px">
                        <asp:ListItem Value="2">Employee</asp:ListItem>
                        <asp:ListItem Value="4">Customer</asp:ListItem>
                        <asp:ListItem Value="3">Supplier</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 487px; height: 59px"></td>
                <td style="height: 59px"></td>
            </tr>
            <tr>
                <td style="width: 304px; height: 59px">&nbsp;</td>
                <td style="width: 304px; height: 59px">
                    <asp:Label ID="Label3" runat="server" Text="Active"></asp:Label>
                </td>
                <td style="width: 487px; height: 59px">
                    <asp:DropDownList ID="dactive" runat="server" Height="40px" style="margin-bottom: 12" Width="387px">
                        <asp:ListItem Value="1">Yes</asp:ListItem>
                        <asp:ListItem Value="0">No</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td style="width: 487px; height: 59px">&nbsp;</td>
                <td style="height: 59px">&nbsp;</td>
            </tr>
            <tr>
                <td style="width: 304px; height: 48px"></td>
                <td style="width: 304px; height: 48px"></td>
                <td style="width: 487px; height: 48px">
                    <asp:Button ID="Button1" runat="server" CssClass="offset-sm-0" OnClick="Button1_Click" Text="Specify" />
                </td>
                <td style="width: 487px; height: 48px"></td>
                <td style="height: 48px"></td>
            </tr>
            <tr>
                <td style="width: 304px">&nbsp;</td>
                <td style="width: 304px">&nbsp;</td>
                <td style="width: 487px">
                    <asp:Label ID="msg" runat="server"></asp:Label>
                </td>
                <td style="width: 487px">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </form>

</asp:Content>
