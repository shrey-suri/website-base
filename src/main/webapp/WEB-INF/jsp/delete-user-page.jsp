<%@ include file="commons/header.jspf" %>
    <title>Delete User</title>
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
           </div>
         </div>
       </nav>
       <br>
       <div class="container">
        <H1>Delete Account</H1>

        <form action="/user/delete" method="post">
          <label for="deleteUser">Are You Sure:</label>
          <br>
          <select id="choice" name="choice" class="form-control" required="required">
            <option value="yes">Yes</option>
            <option value="no">No</option>
          </select>
          <br>
          <input class="btn btn-info" type="submit">
        </form>

<%@ include file="commons/footer.jspf" %>