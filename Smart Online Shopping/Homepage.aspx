 <%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Homepage.aspx.cs" Inherits="Smart_Online_Shopping.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!doctype html>
<html lang="en">
  <head>
 <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Smart Online Shopping </title>
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
  <form id="form1" runat="server">
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
                                <li><a href="Default.aspx">Home</a></li>
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
                                <li><a href="Login.aspx">Log In </a></li>

                            </ul>
                        </div>
                    </div>
                </div>
                <!--- Crousel ---->
                <div id="mycarousel" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#mycarousel" data-slide-to="0" class="active"></li>
                    <li data-target="#mycarousel" data-slide-to="1"></li>
                    <li data-target="#mycarousel" data-slide-to="2"></li>
                  </ol>
                    
              <!---Wrapper for slides --->
              <div class="carousel-inner" role="listbox">
                <div class="item active">
                  <img src="Images/Super Sale 1.jpg" alt="first slide" height = "460" width="auto">
                    <div class="carousel-caption">
                    ...
                    </div>
                  </div>
                <div class="item">
                  <img src="Images/sale 2.jpg" alt="Second slide">
                    <div class="carousel-caption">
                    ...
                    </div>
                </div>
                <div class="item">
                  <img src="Images/sale 3.png"  alt="third slide">
                       <div class="carousel-caption">
                    ...
                    </div>
                </div>
              </div>
                    <!---Controls--->
              <a class="carousel-control-prev" href="#mycarousel" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#mycarousel" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
  </div>
            <!-----Footer---->
            <footer>
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
