<div class="container">
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Name</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			<label>{{ Member.Primary.PriFirstName }} {{ Member.Primary.PriLastName }}</label>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Membership Type:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			<label>{{ Member.Primary.PriCoverageDesc }}</label>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Expiration Date:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			<label>{{Member.Membership.ExpiryDate | date:'MM/dd/yyyy' }}</label>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Account Balance:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			<label>{{Member.Membership.AutoRenewBalance | currency }}</label>
		</div>
	</div>
</div>
<div class="container" style="margin: 30px auto;">
	<h3>MEMBERSHIP LEVEL:</h3>
	<div class="row">
		<div class="col-sm-6">
			<select class="form-control">
				<option disabled value="B">Basic</option>
				<option selected="selected" value="P">Plus</option>
				<option value="RV">Plus RV</option>
				<option value="PR">Premier</option>
				<option value="PRV">Premier RV</option>
			</select>
		</div>
		<label class="col-sm-6 control-label">
			<a href="#">See a full comparison of our membership levels </a>
		</label>
	</div>
</div>

<!-- add associate -->
<%@ include file="assocForm.jsp" %>
<!-- /add associate -->


<!-- member list -->
<%@ include file="memberList.jsp" %>
<!-- member list -->

<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="form-group text-right nl-submit">
				<a href="#/" type="button" class="btn btn-primary">BACK</a>
				<button type="button" class="btn btn-danger">SAVE</button>
			</div>
		</div>
	</div>
</div>

<div class="container" ng-show="debug">
	<h4>Member:</h4>
	{{Member}}
</div>