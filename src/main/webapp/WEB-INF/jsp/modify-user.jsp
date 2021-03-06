<%@ include file="common/header.jspf"%>
<%@ include file="common/navigation.jspf"%>

<div class="container">
	<form:form method="post" modelAttribute="userInfo">
	
	
		<fieldset class="form-group">
		<form:label path="loginId">Login</form:label>
			<form:input path="loginId" type="text" class="form-control" 
				id="loginId" placeholder="Login" readonly="true" />
			<form:errors path="loginId" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="fullName">Full Name</form:label>
				<form:input path="fullName" type="text" class="form-control"
				id="fullName" placeholder="Full Name" required="required" />
				<form:errors path="fullName" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
		<form:label path="email">Email</form:label>
			<form:input path="email" type="text" class="form-control"
				id="email" placeholder="Email" required="required" />
			<form:errors path="email" cssClass="text-warning" />
		</fieldset>
		
		<fieldset class="form-group">
			<form:label path="role">Role</form:label>
			<form:select path="role" class="form-control" id="role" placeholder="Role" required="required">
				<form:options items="${roles}" />
			</form:select>
			<form:errors path="role" cssClass="text-warning" />
		</fieldset>
		<button type="submit" class="btn btn-success">Update</button>
	
	</form:form>
</div>
<%@ include file="common/footer.jspf"%>