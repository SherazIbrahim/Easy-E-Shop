<%@ Page Title="" Language="C#" MasterPageFile="~/usersmaster.Master" AutoEventWireup="true" CodeBehind="registration.aspx.cs" Inherits="Easy_E_Shop.registration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Registration
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
            <a href="#" class="nav-link active">
              <i class="nav-icon fa fa-fw fa-user"></i>
              <p>
            Registration
               </p>
            </a>
         
          </li>
           <li class="nav-item has-treeview menu-open">
           
              <a href="login.aspx" class="nav-link">
              <i class="nav-icon fa fa-fw fa-unlock"></i>
              <p>
             Login
              </p>
            </a>
         
          </li>  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="h1tag" runat="server">
    Registration Page
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="breadcrum" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="MainContent" runat="server">
    <form id="form1" runat="server">
       
            <table style="width: 100%; height: 513px;">
                <tr>
                    <td style="height: 90px; width: 122px"></td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtname" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtname" ErrorMessage="Name is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ControlToValidate="txtname" Display="Dynamic" ErrorMessage="Name must be of atleast 3 characters and atmost 50 characters long!" ForeColor="Red" ValidationExpression="[a-zA-Z\s]{3,50}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 168px; width: 122px"></td>
                    <td style="height: 168px; width: 152px">
                        <asp:Label ID="Label10" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td style="height: 168px; width: 218px;">
&nbsp;&nbsp;
                        &nbsp;&nbsp;
                        <asp:RadioButtonList ID="gender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>  Male</asp:ListItem>
                            <asp:ListItem>  Female</asp:ListItem>
                            <asp:ListItem>  Others</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                    <td style="height: 168px; width: 524px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="gender" ErrorMessage="Gender is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                    </td>
                    <td style="height: 168px; width: 496px;">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td style="height: 168px; width: 122px">&nbsp;</td>
                    <td style="height: 168px; width: 152px">
                        <asp:Label ID="Label12" runat="server" Text="CNIC"></asp:Label>
                    </td>
                    <td style="height: 168px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtcnic" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 168px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="txtcnic" ErrorMessage="Username is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="txtcnic" Display="Dynamic" ErrorMessage="Invalid CNIC!" ForeColor="#FF3300" ValidationExpression="\d{5}\-\d{7}\-\d{1}">Format: 12345-1234567-1</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height:90px; width: 152px">
                        <asp:Label ID="Label2" runat="server" Text="Username"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtuname" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtuname" ErrorMessage="Username is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="txtuname" Display="Dynamic" ErrorMessage="Username must be of atleast 8 characters and atmost 32 characters long and can be alphanumeric! " ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{8,32}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label3" runat="server" Text="Cell"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtcell" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtcell" ErrorMessage="Cell is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtcell" Display="Dynamic" ErrorMessage="Invalid Phone Number!" ForeColor="#FF3300" ValidationExpression="\d{4}\-\d{6}\-\d{1}">Format: 0312-123456-1</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label4" runat="server" Text="Address"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtaddress" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtaddress" ErrorMessage="Address is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator6" runat="server" ControlToValidate="txtaddress" Display="Dynamic" ErrorMessage="Address must be of atleast 10 characters! " ForeColor="Red" ValidationExpression="[a-zA-Z0-9,.@/#\s]{10,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label5" runat="server" Text="Office Address"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtofcaddress" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:Label ID="Label15" runat="server" ForeColor="#0066FF" Text="(Optional)"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="txtofcaddress" Display="Dynamic" ErrorMessage="Office Address must be of atleast 10 characters! " ForeColor="Red" ValidationExpression="[a-zA-Z0-9,./#@\s]{10,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label6" runat="server" Text="Company Address"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtcompanyaddress" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:Label ID="Label14" runat="server" ForeColor="#0066FF" Text="(Optional)"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="txtcompanyaddress" Display="Dynamic" ErrorMessage="Company Address must be of atleast 10 characters! " ForeColor="Red" ValidationExpression="[a-zA-Z0-9,./@#\s]{10,}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label7" runat="server" Text="Employee Code"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtempcode" runat="server" Height="34px" Width="510px"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:Label ID="Label13" runat="server" ForeColor="#0066FF" Text="(Optional)"></asp:Label>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="txtempcode" Display="Dynamic" ErrorMessage="Employee Code must be of atleast 4 and atmost 12 alphanumeric characters!" ForeColor="Red" ValidationExpression="[a-zA-Z0-9]{4,12}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label8" runat="server" Text="Email"></asp:Label>
                    </td>
                    <td style="height: 53px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtemail" runat="server" Height="34px" Width="510px" TextMode="Email"></asp:TextBox>
                    </td>
                    <td style="height: 53px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtemail" ErrorMessage="Email is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtemail" Display="Dynamic" ErrorMessage="Invalid Email!" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Format: xyz@example.xyz</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label9" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtpswd" runat="server" Height="34px" Width="510px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="txtpswd" ErrorMessage="Password is required!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="txtpswd" Display="Dynamic" ErrorMessage="Invalid Password!" ForeColor="#FF3300" ValidationExpression="[a-zA-Z0-9]{8,32}">Password must be alphanumeric and atleast 8 characters long!</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">
                        <asp:Label ID="Label11" runat="server" Text="Confirm Password"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:TextBox ID="txtcpswd" runat="server" Height="34px" Width="510px" TextMode="Password"></asp:TextBox>
                    </td>
                    <td style="height: 90px; width: 496px;">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="txtcpswd" ErrorMessage="Confirm Password is must!" ForeColor="#FF3300" Display="Dynamic">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtpswd" ControlToValidate="txtcpswd" Display="Dynamic" ErrorMessage="CompareValidator" ForeColor="#FF3300">Password Mismatch!</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">&nbsp;</td>
                    <td style="height: 90px; width: 524px;" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                        <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click1" Text="Signup" Width="119px" />
&nbsp;</td>
                    <td style="height: 90px; width: 496px;"></td>
                </tr>
                <tr>
                    <td style="height: 90px; width: 122px">&nbsp;</td>
                    <td style="height: 90px; width: 152px">&nbsp;</td>
                    <td style="height: 90px; width: 524px;" colspan="2">
                        <asp:Label ID="msg" runat="server"></asp:Label>
                    </td>
                    <td style="height: 90px; width: 496px;">&nbsp;</td>
                </tr>
            </table>
            <br />

       
    </form>
    


    </asp:Content>
