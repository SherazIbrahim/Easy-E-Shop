<%@ Page Title="" Language="C#" MasterPageFile="~/usersmaster.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Easy_E_Shop.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Login
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="selectedpage" runat="server">
     <li class="nav-item has-treeview menu-open ">
            <a href="Main.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-street-view"></i>
              <p>
            Main
               </p>
            </a>
         
          </li>
        <li class="nav-item has-treeview menu-open">
            <a href="registration.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-user"></i>
              <p>
            Registration
               </p>
            </a>
         
          </li>
           <li class="nav-item has-treeview menu-open">
           
              <a href="#" class="nav-link active">
              <i class="nav-icon fa fa-fw fa-unlock"></i>
              <p>
             Login
              </p>
            </a>
         
          </li>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Login Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
    <table style="width: 100%; height: 249px;">
        <tr>
            <td style="width: 102px; height: 89px"></td>
            <td style="width: 102px; height: 89px">
                <asp:Label ID="Label10" runat="server" Text="Username"></asp:Label>
            </td>
            <td style="height: 89px; width: 467px;">
                <asp:TextBox ID="txtuname" runat="server" Height="31px" Width="441px"></asp:TextBox>
            </td>
            <td style="height: 89px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="Invalid Username!" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="username must be of atleast 8 characters and atmost 32 characters long and can be alphanumeric! " ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{8,32}"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 92px"></td>
            <td style="width: 102px; height: 92px">
                <asp:Label ID="Label11" runat="server" Text="Password"></asp:Label>
            </td>
            <td style="height: 92px; width: 467px;">
                <asp:TextBox ID="txtpswd" runat="server" Height="31px" Width="441px" TextMode="Password"></asp:TextBox>
            </td>
            <td style="height: 92px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpswd" Display="Dynamic" ErrorMessage="Invalid Password!" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpswd" Display="Dynamic" ErrorMessage="Invalid Password!" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9]{8,32}">Password must be alphanumeric and atleast 8 characters long!</asp:RegularExpressionValidator>
                    </td>
        </tr>
        <tr>
            <td style="width: 102px; height: 83px"></td>
            <td style="width: 102px; height: 83px"></td>
            <td style="height: 83px; width: 467px;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Height="38px" Text="Login" Width="101px" OnClick="Button1_Click" />
            </td>
            <td style="height: 83px"></td>
        </tr>
        <tr>
            <td style="width: 102px; height: 90px"></td>
            <td style="width: 102px; height: 90px"></td>
            <td style="height: 90px; width: 467px;">
                <asp:Label ID="msg" runat="server"></asp:Label>
            </td>
            <td style="height: 90px"></td>
        </tr>
    </table>
</form>
</asp:Content>
