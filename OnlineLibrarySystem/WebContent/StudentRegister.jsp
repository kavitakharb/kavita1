<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div style="background-image:url(images/m3.jpg);height:100%">
<jsp:include page="Navbar.jsp"/>

	 <h3 style="text-align:center; font-family:Monotype Corsiva; font-size:60px ">Student Registration</h3> 
	
	
	<br/>
<!-- Content -->
<div class="container">
<form class="form-horizontal" action="StudentRegister" method="post" style="width:50%;margin-left:270px">
  <div class="form-group">
    <label class="control-label col-sm-2" for="email">Email address:</label>
    <div class="col-sm-10">
    <input type="email" class="form-control" id="email" name="email">
    </div>
  </div>
   <div class="form-group">
    <label class="control-label col-sm-2" for="pwd">Password:</label>
    <div class="col-sm-10">
    <input type="password" class="form-control" id="pwd" name="pwd">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="fname">First Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="fname" name="fName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="lname">Last Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="lname" name="lName">
    </div>
  </div>
  <div class="form-group">
    <label class="control-label col-sm-2" for="gender">Gender:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="gender" name="gender">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="classname">Class Name:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="classname" name="className">
    </div>
  </div>
  
  <div class="form-group">
    <label class="control-label col-sm-2" for="mobileno">MobileNo:</label>
    <div class="col-sm-10">
    <input type="tel" class="form-control" id="mobileno" name="mobileNo" placeholder="1234567890"
    pattern="[0-9]{10}" maxlength="10" required>
    </div>
  </div>
  <!-- <div class="form-group">
    <label class="control-label col-sm-2" for="dob">Date Of Birth:</label>
    <div class="col-sm-10">
    <input type="text" class="form-control" id="dob" name="dob">
    </div>
  </div> --> 
  <button type="submit" class="btn btn-default">Sign Up</button>
</form>

 </div>


<br/><br/><br/>
</div>