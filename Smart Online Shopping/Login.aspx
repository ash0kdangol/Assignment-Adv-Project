﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Smart_Online_Shopping.WebForm2" %>

<head runat="server">
    <!doctype html>
<html lang="en">
  <head>
 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Login</title>
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/Custom-Cs.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        $(document).ready(function myfunction() {
            $("#btnCart").click(function myfunction() {
                window.location.href = "/Cart.aspx";
            });
        });
    </script>
  </head>
  <body>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
  </body>
</html>
</head>
<body>
  <form id="form2" runat="server">
        <div>
                <div class="navbar navbar-default navbar-fixed-top" role="navigation">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                                <span class="icon-bar"></span>
                            </button>
                            <a class="navbar-brand" href="Homepage.aspx"> <span> <img alt ="Title_logo"  src="Images/Title_logo.png" height = "30" /> </span> Smart Online Shopping</a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav navbar-right">
                                <li><a href="Homepage.aspx">Home</a></li>
                                <li><a href="#">About</a></li>
                                <li><a href="#">Contact</a></li>
                                <li class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Categories<b class="caret"></b></a>
                                    <ul class="dropdown-menu">
                                        <li><a href="Categories.aspx">Categories</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li class="dropdown-header">Fruits And Vegetables</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Fruits</a></li>
                                        <li><a href="#">Vegetables</a></li>
                                        <li><a href="#">Boxed Fruit and Vegetables</a></li>
                                        <li><a href="#">Salad and Herbs</a></li>
                                        <li role="separator" class="divider"></li>
                                        <li class="dropdown-header">Meat Seafood and Deli</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Meat </a></li>
                                        <li><a href="#">Seafood</a></li>
                                        <li><a href="#">Deli Meats</a></li>
                                        <li class="dropdown-header">Drinks</li>
                                        <li role="separator" class="divider"></li>
                                        <li><a href="#">Soft Drinks </a></li>
                                        <li><a href="#">Cordials</a></li>
                                        <li><a href="#">Water</a></li>
                                        <li><a href="#">Juice</a></li>
                                        <li><a href="#">Long Life Milk</a></li>
                                    </ul>
                                </li>
                               <li><a href="Signup.aspx">Register</a></li>
                                <li class="active"><a href="Login.aspx">Log In</a></li>

                            </ul>
                        </div>
                    </div>
                </div>
           </div>
    <!-- Log In start -->
               <div class="container">
            <div class="form-horizontal">
                <h2>Login</h2>
                <hr />
                <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Username"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Username field is Required !" ControlToValidate="UserName"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Password"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="Password" CssClass="form-control" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorPass" CssClass="text-danger" runat="server" ErrorMessage="The Password field is Required !" ControlToValidate="Password"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                        <asp:Label ID="Label3" runat="server" CssClass="control-label" Text="Remember me ?"></asp:Label>
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click"/>
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Signup.aspx">Sign Up</asp:LinkButton>
                    </div>
                </div>
                    <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Label ID="lblError" runat="server" CssClass="text-danger"></asp:Label>
                    </div>
                </div>
            </div>
        </div>
    <!-- Log in end -->

                <!---Footer--->
     <footer class ="footer-pos">
            <div class="container">
            <p class="pull-right"><a href="#">Back to top</a></p>
            <p>&copy; 2019 VU Sydney &middot; <a href="Homepage.aspx">Home</a> &middot; <a href="#">About</a> &middot; <a href="#">Contact</a> &middot; <a href="#">Products</a></p>
        </div>
         </footer>

</form>
           <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</body>
</html>