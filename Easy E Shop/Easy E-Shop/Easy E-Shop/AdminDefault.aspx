<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AdminDefault.aspx.cs" Inherits="Easy_E_Shop.AdminDefault" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Admin
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
     <li class="nav-item has-treeview menu-open">
           
              <a href="UserManagement.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-users"></i>
              <p>
                  User Management
              </p>
            </a>
         
          </li>
      <li class="nav-item has-treeview menu-open">
           
              <a href="assignaccesslevel.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fas fa-universal-access"></i>
              <p>
                  Specify Access Level
              </p>
            </a>
         
          </li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Admin
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
            Product Management
        </h5>
        <p class="card-text"></p>
        <p class="card-text">Link below will redirect you to Products page!</p> 
        <a class="card-link" href="ProductDefault.aspx">Product Management</a>
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
