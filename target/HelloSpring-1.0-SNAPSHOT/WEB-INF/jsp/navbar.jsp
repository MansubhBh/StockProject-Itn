  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
        <a class="navbar-brand" href="<c:url value="/admin" />">Stock Managment app</a>
    </div>

    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
        <li><a href="#">Sales</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">products <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
              <li><a href="<c:url value="/addProduct" />">Add products</a></li>
              <li><a href="<c:url value="/viewProduct"/>">View Products</a></li>
            <li><a href="<c:url value="/addCategory" />">Add Category</a></li>
<!--            <li><a href="#">Something else here</a></li>-->
          </ul>
        </li>
      </ul>
     
      <ul class="nav navbar-nav navbar-right">
          <li><a href="<c:url value="/logout" /> ">Logout</a></li>
      </ul>
    </div>
  </div>
</nav>