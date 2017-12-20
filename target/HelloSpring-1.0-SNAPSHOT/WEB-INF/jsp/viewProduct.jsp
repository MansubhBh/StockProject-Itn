<%@include file="header.jsp" %>
<%@include file="navbar.jsp" %>


<div class="container">
    
    <h3>Product Details</h3>
    
    <table class="table table-bordered table-striped table-hover">
        <thead>
            <tr>
                <th>Product Name</th>
                <th>Product Key</th>
                <th>Product Category</th>
                <th>Product description</th>
                <th>Product quantity</th>
                <th>product unit cost</th>
                <th>Status</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="prod" items="${allproducts}">
                <tr>
                    <td>${prod.productName}</td>
                    <td>${prod.productKey}</td>
                    <td>${prod.categoryId.categoryName}</td>
                    <td>${prod.productDescription}</td>
                    <td>${prod.productQuantity}</td>
                    <td>Nrs. ${prod.productCost}</td>
                    <td id="productstatus"></td>
                </tr>
            </c:forEach>
           
        </tbody>
        
    </table>
    
    
</div>

<%@include file="footer.jsp" %>