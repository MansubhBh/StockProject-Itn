<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>

<form class="form-horizontal" method="POST" action="<c:url value="/saveCategory" />">
  <fieldset>
    <legend>Add Category</legend>
    
    <div class="form-group">
      <label  class="col-lg-2 control-label">Category Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name = "catName" placeholder="Enter Category name">
      </div>
    </div>
    
     <div class="form-group">
      <label  class="col-lg-2 control-label">Category Description</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" name = "catDesc" placeholder="Enter Category Description">
      </div>
    </div>
    
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button type="reset" class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
    
    </fieldset>
  
  </form>
  <br>
  <br>
  <br>
  <div class="container">
  <table class="table table-bordered table-hover table-striped">
      <thead>
          <tr>
              <th>Category Id</th>
              <th>Category Name</th>
              <th>Category Description</th>
          </tr>
      </thead>
      <tbody>
          <c:forEach var="category" items="${categories}">
              <tr>
                  <td>${category.categoryId} </td>
                  <td>${category.categoryName} </td>
                  <td>${category.categoryDescription} </td>
              </tr>    
          </c:forEach>
          
      </tbody>
      
  </table>
      </div>


<%@include file="footer.jsp" %>