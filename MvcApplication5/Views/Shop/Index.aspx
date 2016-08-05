﻿<% @ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IPagedList <MvcApplication5.Goods>>" %>
<%@ Import namespace="PagedList" %>
<%@ Import namespace="PagedList.Mvc" %>
    
   <script src="http://ajax.aspnetcdn.com/ajax/jQuery/jquery-1.12.4.min.js"></script>
    
  
    <script type="text/javascript">
        $(document).ready(function () {
            $("#slides").on('click', function () {
                $("#toggle").animate({ width: 'toggle' }, 350);
            });

            $('ul.nav li.dropdown').hover(function () {
                $(this).find('.dropdown-menu').stop(true, true).delay(000).fadeIn(000);
            }, function () {
                $(this).find('.dropdown-menu').stop(true, true).delay(000).fadeOut(000);
            });

        });

    </script>


<!DOCTYPE html>
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
    <style>
        /* Remove the navbar's default rounded borders and increase the bottom margin */
        .navbar {
            margin-bottom: 0px;
            border-radius: 0;
        }

        /* Remove the jumbotron's default bottom margin */
        .jumbotron {
            margin-bottom: 0;
            margin:10px;
            overflow: hidden;
        }

        /* Add a gray background color and some padding to the footer */
        footer {
            background-color: #f2f2f2;
            padding: 25px;
        }
        .dropdown-menu {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        }

/* Links inside the dropdown */
        .dropdown-menu li a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

    </style>
</head>

<body>
    <div class="jumbotron">
        <div class="container text-center">
            <h1>Online Store</h1>
            <p>Mission, Vission & Values</p>
        </div>
    </div>

    <nav class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home</a></li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown">Product</a>
                                   <ul class="dropdown-menu">
                                        <li>
                                            <%: Html.ActionLink("상의", "Index",new { currentFilter ="03", page =1 }) %>
                                        </li>
                                        <li>
                                            <%: Html.ActionLink("하의", "Index",new { currentFilter ="04", page =1 }) %>
                                        </li>
                                        <li><a href="#">JavaScript</a></li>
                                   </ul>
                    
                    </li>
                    <li><a href="/#/routeTwo/6">Deals</a></li>
                    <li><a href="/#/routeThree/9">Stores</a></li>
                    <li><a href="#">Contact</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
                    <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div class="row content">
       <div class="col-sm-3 sidenav hidden-xs" style="height:600px;float:left" id="toggle">
          <h2>Logo</h2>
          <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="#section1">Dashboard</a></li>
            <li><a href="#section2">Age</a></li>
            <li><a href="#section3">Gender</a></li>
            <li><a href="#section3">Geo</a></li>
          </ul>
       </div>
       
        <div style="height:600px;margin-left:10px; float:left;vertical-align:middle;">
            <a id="slides" class="w3-btn-floating w3-ripple w3-teal">></a>
        </div>
         
        <div  style="height:auto;">
            <% Html.RenderAction("Goods", new { model = Model });%>
        </div>
    </div>
          
    <div id='Paging' style="text-align:center">
     <%:Html.PagedListPager(Model, page => Url.Action("Index", new { currentFilter = ViewBag.CurrentFilter, page }))%>
    </div>
   
</body>

<footer class="container-fluid text-center">
    <p>Online Store Copyright</p>
    <form class="form-inline">
        Get deals:
        <input type="email" class="form-control" size="50" placeholder="Email Address">
        <button type="button" class="btn btn-danger">Sign Up</button>
    </form>
</footer>
</html>
