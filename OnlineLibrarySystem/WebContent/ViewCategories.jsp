<div style="background-color:pink;height:100%">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:if test="${sessionScope.role eq 'Admin'}">
<jsp:include page="AdminNavbar.jsp"/>
</c:if>
<c:if test="${sessionScope.role eq 'Student'}">
<jsp:include page="UserNavbar.jsp"/>
</c:if>

<c:if test="${sessionScope.role eq 'Member'}">
<jsp:include page="UserNavbar.jsp"/>
</c:if>

<br/>
<!-- Content -->
<div class="container" style="margin-top:50px;">

	<c:if test="${not empty msg}">
		<div class="alert alert-success">
			${msg}
		</div>
	</c:if>
	<h1>List of Categories</h1>
	<c:choose>
		<c:when test="${cList.size() eq 0}">
			No Categories Found...
		</c:when>
		<c:otherwise>
			<table class="table table-hover" style="table border:0">
				<tr>
		
					<th>Category Name</th>
					<th>Category Description</th>
				</tr>
				<c:forEach items="${cList}" var="categoryObj">
					<tr>
						
						<td>${categoryObj.categoryName}</td>
						<td>${categoryObj.categoryDesc}</td>
						<td>
						
						<c:if test="${sessionScope.role eq 'Admin'}">
							<a href="deleteCategory?catId=${categoryObj.categoryId}"><i class="fa fa-trash" aria-hidden="true"></i></a>
						</td>
						<td>
							<a href="updateCategory?catId=${categoryObj.categoryId}"><i class="fa fa-edit" aria-hidden="true"></i></a>
						</td>
						<td>
						 
							<a href="AddBook?catId=${categoryObj.categoryId}"><span>AddBook</span></a>
			
						
							
						</td>
						</c:if>
						
						<td>
						 
							<a href="viewAllBooks?catId=${categoryObj.categoryId}"><span>ViewAllBook</span></a>
			
						
							
						</td>
						
					</tr>
					
				</c:forEach>
			</table>
		</c:otherwise>
	</c:choose>
 </div>
 

</div>
	