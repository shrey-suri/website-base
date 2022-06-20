<%@ include file="commons/header.jspf" %>
    <title>${name} | Home</title>
</head>
<body>
<nav class="navbar navbar-expand-lg bg-primary">
         <div class="container-fluid">
           <a class="navbar-brand text-light" href="/user-home">Web Services</a>
           <button class="navbar-toggler" style="background-color: #ffffff;" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
             <span class="navbar-toggler-icon"></span>
           </button>
           <div class="collapse navbar-collapse justify-content-end nav-pills" id="navbarNavAltMarkup">
             <div class="navbar-nav">
                <a class="nav-link text-light"  href="/logout">Log Out</a>
                <a class="nav-link text-light"  href="/user/delete">Delete Account</a>
           </div>
         </div>
       </nav>
       <br>
       <div class="container">

            Hello to User Home Page
<%@ include file="commons/footer.jspf" %>