<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html>
    <script src="https://use.typekit.net/ayg4pcz.js"></script>
    <script>try{Typekit.load({ async: true });}catch(e){}</script>
<html>
<head runat="server">
    <meta name="viewport" content="width=device-width" />
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.min.css">
    <link rel="stylesheet" href="http://bootsnipp.com/dist/bootsnipp.min.css?ver=7d23ff901039aef6293954d33d23c066">
    <link rel="stylesheet" href="/Content/css/admin_login.css">
    <title>Index</title>
</head>
<body>
    <div class="container">
    <h1 class="welcome text-center">Welcome to <br> Intellian Shop</h1>
        <div class="card card-container">
        <h2 class='login_title text-center'>Login</h2>
        <hr>
            <form action="/admin/login" method="post" class="form-signin" name="admin">
                <span id="reauth-email" class="reauth-email"></span>
                <p class="input_title">Email</p>
                <input type="text" id="inputEmail" class="login_box" name="admin_id" placeholder="user01@IceCode.com" required autofocus>
                <p class="input_title">Password</p>
                <input type="password" id="inputPassword" class="login_box" name="admin_pw" placeholder="******" required>
                <div id="remember" class="checkbox">
                    <label>
                        
                    </label>
                </div>
                <button class="btn btn-lg btn-primary" type="submit">Login</button>
            </form><!-- /form -->
            
            <%: Html.ValidationSummary(false,"",new {@name = "failed" ,@color = "red" } ) %>
            
        </div><!-- /card-container -->
    </div><!-- /container -->
</body>
</html>
