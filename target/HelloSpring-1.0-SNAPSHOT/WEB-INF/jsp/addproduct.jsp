<%-- 
    Document   : addproduct
    Created on : Dec 16, 2017, 6:51:17 PM
    Author     : Mansubh Bhandari
--%>

<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>
        <div class="container"> 
       <form class="form-horizontal">
  <fieldset>
    <legend>Add Products</legend>
    <div class="form-group">
      <label  class="col-lg-2 control-label">Product Name</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="prodName" placeholder="Enter product name">
      </div>
    </div>
    
      <div class="form-group">
      <label  class="col-lg-2 control-label">Product Key</label>
      <div class="col-lg-10">
        <input type="text" class="form-control" id="prodName" >
      </div>
    </div>
    <div class="form-group">
      <label  class="col-lg-2 control-label">Product Category</label>
      <div class="col-lg-10">
        <select class="form-control" id="productCat">
            <option>----select category----</option>
    <option>Electronics</option>
    <option>Bags and leathers</option>
    <option>Shoes</option>
    <option>Stuffs</option>
  </select>
      </div>
    </div>
    
    
      <div class="form-group">
      <label  class="col-lg-2 control-label">Product Quantity</label>
      <div class="col-lg-10">
          <input type="number" class="form-control" id="prodName" min="0" placeholder="Enter product Quantity">
      </div>
    </div>
   
    
    
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Product Description</label>
      <div class="col-lg-10">
        <textarea class="form-control" rows="3" id="prodDesc"></textarea>
        <span class="help-block">A longer block of help text that breaks onto a new line and may extend beyond one line.</span>
      </div>
    </div>
     <div class="form-group">
      <label  class="col-lg-2 control-label">Product Cost price(Nrs)</label>
      <div class="col-lg-10">
        <input type="number" class="form-control" id="prodCost" placeholder="Enter product cost (in Nrs)">
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
    </body>
</html>
