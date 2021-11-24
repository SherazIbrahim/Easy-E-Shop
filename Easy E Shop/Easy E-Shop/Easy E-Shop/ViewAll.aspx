<%@ Page Title="" Language="C#" MasterPageFile="~/productmaster.Master" AutoEventWireup="true" CodeBehind="ViewAll.aspx.cs" Inherits="Easy_E_Shop.ViewAll" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
 View Details
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
              <i class="nav-icon fa fa-fw fas fa-asterisk"></i>
              <p>
 View Details
               </p>
            </a>
         
          </li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">

    Details

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"> </script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <div class="row" >
        <asp:DataList ID="datalist" runat="server" repeatLayout="Flow" RepeatDirection="Horizontal">
            
         <ItemTemplate>
              <div class="col-xs-6 col-md-3">
                    <div class="thumbnail">
                        <div class="card">
                           <img class="card-img-top" src='./Images/<%# Eval("prdImage") %>'
                                alt="Card image"
                                style="width: 100%; height: 100%;" /> 
                            <div class="card-body">
                                <h4 class="card-title">Product: <%# Eval("prdTitle") %></h4>
                                <p class="card-text">Price: RS.<%# Eval("prdPrice") %></p>
                                <p class="card-text">Code:<%# Eval("prdID") %></p>
                                <p class="card-text">Stock:<%# Eval("prdStock") %></p>
                                 <p class="card-text">Manufaturer:<%# Eval("prdManufacturer") %></p>
                                 <p class="card-text">Expiry:<%# Eval("prdExpiry") %></p>
                                </div>
                            </div>
                        </div>
                 </div>

                
                 
</ItemTemplate>
</asp:DataList>
</div>
</asp:Content>
