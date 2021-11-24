<%@ Page Title="" Language="C#" MasterPageFile="~/cartmaster.Master" AutoEventWireup="true" CodeBehind="shoppage.aspx.cs" Inherits="Easy_E_Shop.shoppage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
       <br />
    <br />
    <br />
    <br />

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
                                <p class="card-text">Price: RS:<%# Eval("prdPrice") %></p>
                                <asp:Button
                                    ID="btnAddtoCart"
                                    runat="server" 
                                    Text="Add to Cart" 
                                    OnCommand="btnAddToCart_Command" 
                                    CommandName="AddToCart" 
                                    CommandArgument='<%# Eval("prdID")%>' 
                                    CssClass="btn btn-danger"/>
                                </div>
                            </div>
                        </div>
                 </div>

                
                 
</ItemTemplate>
</asp:DataList>
</div>
</asp:Content>
