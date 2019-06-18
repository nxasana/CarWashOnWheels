<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="OurProject.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login Form</title>
    <link href="StyleLogin.css" rel="stylesheet" />
   
    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
    </style>
</head>
<body>
    <form id="form" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <span>Sign in with social Network</span><br />
                    <br />
                    <a href="#" class="fb">Login with Facebook</a>
                    <br />
                    <a href="#" class="tw">Login with Twitter</a>
                    <br />
                    <a href="#" class="gl">Login with Google+</a>
                    <br />
                </div>
                <div class="inner2">
                    <h3>Login</h3>

                    

                    <asp:TextBox ID="txtemail" placeholder="E-mail" runat="server"></asp:TextBox>
                    <asp:Label ID="Label2" Visible="false" CssClass="error px-5 py-1" runat="server" Text=""></asp:Label>
                    

                    
                    <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <asp:Label ID="Label3" Visible="false" CssClass="error px-5 py-1 " runat="server" Text=""></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Submit" OnClick="Submit_Click"  runat="server" CssClass="btn" Text="Signin" />
                     <br />
                    <br />
                    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Registration.aspx" runat="server">Register</asp:HyperLink>

                    <asp:Label ID="success" CssClass="bg-success px-5 py-2" ForeColor="White" Visible="false" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </section>
    </form>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
</body>
</html>
