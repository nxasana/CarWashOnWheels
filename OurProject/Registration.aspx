<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="OurProject.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration Form</title>

    <link href="Style.css" rel="stylesheet" />
    <style>
        @import url('http://fonts.googleapis.com/family=Bitter|Crete+Round|Pacifico');
    </style>

    <head id></head>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <div class="inner1">
                    <span>Sign in with socila Network</span><br />
                    <br />
                    <a href="#" class="fb">Login with Facebook</a>
                    <br />
                    <a href="#" class="tw">Login with Twitter</a>
                    <br />
                    <a href="#" class="gl">Login with Google+</a>
                    <br />
                </div>
                <div class="inner2">
                    <h3>Sign Up</h3>

                   


                    <asp:TextBox ID="txtemail" placeholder="E-mail" runat="server"></asp:TextBox>
                    <br />
         
                   


                    <asp:TextBox ID="txtpasswd" placeholder="Password" TextMode="Password" runat="server"></asp:TextBox>
                    <br />
                   

                    <asp:TextBox ID="txtcops" placeholder="Retype Password" TextMode="Password" runat="server"></asp:TextBox>
                   

                    <asp:Button ID="Button1" OnClick="Button1_Click" runat="server" CssClass="btn" Text="Sign Up" />

                   </div>
            </div>
        </section>
    </form>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [regi]"></asp:SqlDataSource>
</body>
</html>
 <script language="javascript" type="text/javascript">
        function validate() {
            if (document.getElementById("<%=txtemail.ClientID%>").value== "") {
                alert("Email field can not be blank");

                document.getElementById("<%=txtemail.ClientID%>").focus();
                return false;
            }

            var emailPat = /^(\".*\"|[A-Za-z]\w*)@(\[\d{1,3}(\.\d{1,3}){3}]|[A-Za-z]\w*(\.[A-Za-z]\w*)+)$/;  
            var emailid = document.getElementById("<%=txtemail.ClientID %>").value;
            var matchArray = emailid.match(emailPat);
            if (matchArray == null) {
                alert("Your email address seems incorrect. Please try again.");
                document.getElementById("<%=txtemail.ClientID %>").focus();
                return false;
            } 

            if (document.getElementById("<%=txtpasswd.ClientID%>").value == "") {
                alert("Please input password");

                document.getElementById("<%=txtpasswd.ClientID%>").focus();
                return false;
            }

            if (document.getElementById("<%=txtcops.ClientID%>").value == "") {
                alert("Please Confirm Password password");

                document.getElementById("<%=txtcops.ClientID%>").focus();
                 return false;
             }

        }
    </script>