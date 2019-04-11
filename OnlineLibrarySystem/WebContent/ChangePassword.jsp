<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="background-image:url(images/m3.jpg);height:100%">

<jsp:include page="UserNavbar.jsp"/>

<div class="container" style="margin-left:250px;border-radius: 25px;">
<img src="images/m4.jpg" class="rounded" style="align:center">
</div>

<div class="col-md-8"style= "width:40%;flot-left;margin-left:400px">
							<form action="changepwd" method="post">
							<h3> Change password</h3>
  							 <div class="form-group">
  			  <label for="pwd"> New Password:</label>
   			 <input type="password" class="form-control" name="npass">
  		</div>
  		 <div class="form-group">
  			  <label for="pwd"> Confirm Password:</label>
   			 <input type="password" class="form-control" name="cpass">
  		</div>
 			
  <button type="submit" class="btn btn-default">submit</button>
</form>
							
							
</div>	
</div>						