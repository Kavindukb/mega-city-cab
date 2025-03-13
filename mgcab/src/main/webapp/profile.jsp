


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>


<!-- ********************************************************************************************************************************************* -->

<h1>My Profile</h1>
    <c:set var="cus" value="${customer}"/>
      
 <fieldset enabled>
 <!-- ******************************************************************************************************************************************* -->
 <div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">regno</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="regno" value="${cus.regno}" placeholder="registration number">
</div>


<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">name</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="name" value="${cus.name}" placeholder="name">
</div>



<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">address</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="address" value="${cus.address}" placeholder="address">
</div>


<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">nic</label>
  <input type="number" class="form-control" id="formGroupExampleInput" name="nic" value="${cus.nic}" placeholder="nic">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">tpno</label>
  <input type="text" class="form-control" id="formGroupExampleInput" name="tpno" value="${cus.tpno}" placeholder="user name">
</div>

<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">username</label>
  <input type="password" class="form-control" id="formGroupExampleInput" name="username" value="${cus.username}" placeholder="password">
</div>
<div class="mb-3">
  <label for="formGroupExampleInput" class="form-label">pass</label>
  <input type="password" class="form-control" id="formGroupExampleInput" name="pass" value="${cus.pass}" placeholder="password">
</div>
<!-- ********************************************************************************************************************************************* -->


<button type="submit" class="btn btn-danger">submit</button>
</fieldset>
</body>
</html>