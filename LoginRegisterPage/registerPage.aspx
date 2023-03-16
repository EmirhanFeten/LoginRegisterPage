<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="registerPage.aspx.cs" Inherits="LoginRegisterPage.registerPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <title>Register Page</title>
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

        
              <!-- Checkout Start -->
    <div class="container-fluid pt-5" style="display:grid;place-items:center;height:100%">
        <div class="row col-12 col-md-4 pt-5" style="border:2px; border-color:gray; border-style:solid;border-radius:20px">
           

            <div class="col-12 col-md-12">
                <div class="mb-4">
                    <h4 class="font-weight-semi-bold mb-4">Register</h4>
                    <div class="row">
                        <div class="col-md-12 form-group">                            
                            <asp:TextBox class="form-control"  placeholder="First Name" ID="TextBox1" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox1" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="Last Name" ID="TextBox2" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox2" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="User Name" ID="TextBox3" runat="server"></asp:TextBox>
                            
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox3" Display="Dynamic"></asp:RequiredFieldValidator>
                      
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="Password" ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox4" Display="Dynamic"></asp:RequiredFieldValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="Password Repeat" ID="TextBox5" runat="server" TextMode="Password"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox5" Display="Dynamic"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Şifreler Uyumsuz" ControlToCompare="TextBox4" ControlToValidate="TextBox5" Display="Dynamic"></asp:CompareValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:TextBox class="form-control"  placeholder="Mail" ID="TextBox6" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Cannot Be Blank" ControlToValidate="TextBox6" Display="Dynamic"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Geçerli Mail Adresi Giriniz" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:Button class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-2" ID="Button1" runat="server" Text="Register" OnClick="Button1_Click"  />
                            <a href="loginPage.aspx"><input id="Button2" class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-2" type="button" value="Login" /></a>
                        </div>
                        <div class="col-md-12 form-group">
                            <asp:Panel ID="Panel1" runat="server"><div class="alert alert-primary" role="alert"> 
                                Registration Successful
                            </div></asp:Panel>
                            <asp:Panel ID="Panel2" runat="server"><div class="alert alert-primary" role="alert"> 
                                Registration Failed
                            </div></asp:Panel>
                            <asp:Panel ID="Panel3" runat="server"><div class="alert alert-primary" role="alert"> 
                                Username Taken
                            </div></asp:Panel>
                        </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Checkout End -->
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
