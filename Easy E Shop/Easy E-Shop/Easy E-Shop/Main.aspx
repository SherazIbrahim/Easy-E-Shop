<%@ Page Title="" Language="C#" MasterPageFile="~/MianMaster.Master" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="Easy_E_Shop.Main" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Main
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="selectedpage" runat="server">
         <li class="nav-item has-treeview menu-open">
            <a href="#" class="nav-link active">
              <i class="nav-icon fa fa-fw fa-street-view"></i>
              <p>
 Main
               </p>
            </a>
         
          </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Main Page
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
            User Login
        </h5>
        <p class="card-text"></p>
        <p class="card-text">Link below will redirect you to User Login  page!</p> 
        <a class="card-link" href="login.aspx">User Login</a>
    </div>
           </div>
 </div>
                <div class="col-md-6">
       <div class="card">
    <div class="card-body">
      <h5 class="card-title">
            Don't Have Account?
        </h5>
        <p class="card-text"></p>
        <p class="card-text">Link below will redirect you to Registration  page!</p> 
        <a class="card-link" href="registration.aspx">Register Your Self!</a>
    </div>
           </div>
 </div>
</div>
    </div>
        </div>
</asp:Content>
