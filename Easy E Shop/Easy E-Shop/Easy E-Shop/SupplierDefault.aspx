<%@ Page Title="" Language="C#" MasterPageFile="~/usersmaster.Master" AutoEventWireup="true" CodeBehind="SupplierDefault.aspx.cs" Inherits="Easy_E_Shop.SupplierDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Suppliers
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="selectedpage" runat="server">
     <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Supplier Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
       <div class="content">
        <div class="container-fluid">
            <div class="row">
      
<div class="col-md-6">
       <div class="card">
    <div class="card-body">
      <h5 class="card-title">
            Product Details
        </h5>
        <p class="card-text"></p>
        <p class="card-text">Link below will redirect you to Page to View Product Details!</p> 
        <a class="card-link" href="ViewAll.aspx">View Products</a>
    </div>
           </div>
 </div>
         
                <div class="col-md-6">
       <div class="card">
    <div class="card-body">
      <h5 class="card-title">
            Your Profile
        </h5>
        <p class="card-text"></p>
        <p class="card-text">Link below will redirect you to Update Your Profile!</p> 
        <a class="card-link" href="UserManagement.aspx">Update Profile</a>
    </div>
           </div>
 </div>
</div>
    </div>
        </div>
</asp:Content>
