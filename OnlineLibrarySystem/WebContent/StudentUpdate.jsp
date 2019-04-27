<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="background-color:Pink;height:100%">

<jsp:include page="UserNavbar.jsp"/>
	<br/>
<!-- Content -->
<div class="container">
<form class="form-horizontal" action="studentUpdate" method="post" style="width:50%;margin-left:270px">
<div class="form-group">
    <label class="control-label col-sm-2" for="email">Email address:</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" id="email" name="email" value="${sessionScope.user1.email}" required>
    </div>
  </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="fname">First Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="fname" name="fName" value="${sessionScope.user1.firstName}">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label class="control-label col-sm-2" for="lname">Last Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="lname" name="lName" value="${sessionScope.user1.lastName}">
    </div>
  </div>
  <br><br>
  <div class="form-group">
    <label class="control-label col-sm-2" for="gender">Gender:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="gender" name="gender" value="${sessionScope.user1.gender}">
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="className">ClassName:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="className" name="className" value="${sessionScope.user1.className}">
    </div>
  </div><br><br>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="mobileNo">MobileNo:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="mobileNo" name="mobileNo" value="${sessionScope.user1.mobileNo}">
    </div>
  </div><br><br>
  
  
   
   <div style="text-align:center"> 
  <button type="submit" class="btn btn-default">Update</button>
  </div>
</form>

 </div>


<br/><br/><br/>
	
