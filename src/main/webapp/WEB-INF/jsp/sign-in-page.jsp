<%@ include file="commons/header.jspf" %>
    <title>Sign In</title>
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
                <a class="nav-link text-light"  href="/login">Log In</a>
           </div>
         </div>
       </nav>
       <br>
       <div class="container">

        <h1>Sign Up</h1>
        <!-- Hidden Values -->
        <form:form method="post" modelAttribute="user">
            <input id="id" name="id" type="hidden" value="${user.id}"/>
            <fieldset class="form-group">
                <form:label path="name">Name:</form:label><br>
                <form:input path="name" type="text" name="name" class="form-control" required="required"  placeholder="Name"/>
                <form:errors path="name" cssClass="text-warning" />
            </fieldset>
            <br>
             <fieldset class="form-group">
                            <form:label path="password">Password:</form:label><br>
                            <form:input path="password" type="password" name="password" class="form-control" required="required"  placeholder="Password"/>
                            <form:errors path="password" cssClass="text-warning" />
             </fieldset>
             <br>
            <fieldset class="form-group">
                            <form:label path="birthDate">Date of Birth:</form:label><br>
                            <form:input path="birthDate" type="text" name="birthDate" class="form-control" required="required"  placeholder="dd/mm/yyyy"/>
                            <form:errors path="birthDate" cssClass="text-warning" />
            </fieldset>
            <br>
            <input class="btn btn-success" type="submit" value="Submit"/>
        </form:form>

<%@ include file="commons/footer.jspf" %>