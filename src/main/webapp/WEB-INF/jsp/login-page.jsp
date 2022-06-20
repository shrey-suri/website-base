<%@ include file="commons/header.jspf" %>
    <title>Log In</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary">
         <div class="container-fluid">
           <a class="navbar-brand text-light" href="/">Web Services</a>
           <button class="navbar-toggler" style="background-color: #ffffff;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
           </button>
           <div class="collapse navbar-collapse justify-content-end nav-pills" id="navbarNavAltMarkup">
             <div class="navbar-nav">
                <a class="nav-link text-light" href="/sign-in">Sign Up</a>
           </div>
         </div>
       </nav>
       <br>
       <div class="container">
       <H1>Log In</H1>

 <form action="/login" method="post">
            <p>
                <font color="red"><strong>${errorMessage}</strong></font>
            </p>
            <fieldset class="form-group">
                <label>User Name</label>
                <br>
                <input type="text" name="name" class="form-control" required="required" />
            </fieldset>

            <fieldset class="form-group">
                <label>Password</label>
                <br>
                <input type="password" name="password" class="form-control" required="required" />
            </fieldset>
            <br>
            <input class="btn btn-info" type="submit" value="Login"/>
        </form>

<%@ include file="commons/footer.jspf" %>