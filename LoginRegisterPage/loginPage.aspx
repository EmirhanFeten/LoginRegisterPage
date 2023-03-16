<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginPage.aspx.cs" Inherits="LoginRegisterPage.loginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Login Page</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>
<body style="height:100vh">
    <form id="form1" runat="server" style="height:100%">
        
            <div class="container-fluid pt-5" style="display:grid;place-items:center;height:100%">
        <div class="row col-12 col-md-4 pt-5 " style="border:2px; border-color:gray; border-style:solid;border-radius:20px">
            

            <div class=" col-lg-12 " >
                <%--<div class="mb-4">--%>
                    <h4 class="font-weight-semi-bold mb-4">Login</h4>
                    <div class="row">
                        <div class="col-md-12 form-group">                            
                            <asp:TextBox class="form-control"  placeholder="User Name" ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="Password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:Button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-2" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"  />
                            <a href="registerPage.aspx"><input id="Button2" class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-2" type="button" value="Register" /></a>
                        </div>
                        
                        <div class="col-md-12 form-group">
                            <asp:Panel ID="Panel1" runat="server"><div class="alert alert-primary" role="alert"> 
                                Login Successful
                            </div></asp:Panel>
                            <asp:Panel ID="Panel2" runat="server"><div class="alert alert-primary" role="alert"> 
                                Login Failed
                            </div></asp:Panel>
                        </div>
                </div>
            </div>
        </div>
    <!-- Checkout End -->
</div>
        </div>

    </form>
     <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
</body>
</html>
