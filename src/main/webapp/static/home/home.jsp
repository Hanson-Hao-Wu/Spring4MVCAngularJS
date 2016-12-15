<div class="container" >
	<div class="row">
		<div class="col-xs-6">
			<h3 style="margin:5px 0 20px;">Welcome, {{Member.Primary.PriFirstName}} {{Member.Primary.PriLastName}}</h3>
		</div>
		<div class="col-xs-6">
			<a ng-click="logout()" type="button" class="btn btn-danger pull-right">Logout</a>
		</div>
	</div>
	<!-- Breadcrumbs
	<div class="row">
		<ol class="breadcrumb">
			<li><a href="/myaccount/">My Account</a></li>
		</ol>
	</div> -->
</div>
<div class="container highlight bg-info">
	<div class="row">
		<div class="col-sm-12">
			<label>Quick Links</label>
		</div>
		<div class="col-sm-12">
			<div class="btn-group btn-group-justified" role="group"	aria-label="Justified button group">
				<div class="btn-group" role="group">
					<a href="#/addUpgrade" class="btn btn-default">Upgrade</a>
				</div>
				<div class="btn-group" role="group">
					<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Downgrade</a>
				</div>
				<div class="btn-group" role="group">
					<a href="#/addUpgrade" class="btn btn-default">Add Associate</a>
				</div>
				<div class="btn-group" role="group">
					<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Remove Associate</a>
				</div>
				<div class="btn-group" role="group">
					<a href="/myaccount/changePassword.jsp" class="btn btn-default">Change Password</a>
				</div>
				<div class="btn-group" role="group">
					<a href="/myaccount/addAssociate.jsp" class="btn btn-default">Cancel</a>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container">
	<div class="row home-page-links">
		<div class="col-sm-6">
			<a href="#/primary" class="btn btn-primary btn-myaccount">
				<i class="fa fa-user" aria-hidden="true"></i>
				Primary Member Information
			</a>
		</div>
		<div class="col-sm-6">
			<a  href="#/affinity" class="btn btn-primary btn-myaccount">
				<i class="fa fa-usd" aria-hidden="true"></i> CAA Rewards
			</a>
		</div>
	</div>
	<div class="row home-page-links">
		<div class="col-sm-6">
			<a href="#/associate" class="btn btn-primary btn-myaccount">
				<i class="fa fa-group" aria-hidden="true"></i> Associate
				Member(s) Information
			</a>
		</div>
		<div class="col-sm-6">
			<a href="#/email" class="btn btn-primary btn-myaccount">
				<i class="fa fa-envelope" aria-hidden="true"></i> Email
				Preference
			</a>
		</div>
	</div>
	<div class="row home-page-links">
		<div class="col-sm-6">
			<a href="#/autoRenew" class="btn btn-primary btn-myaccount">
				<i class="fa fa-refresh" aria-hidden="true"></i> Auto-Renew
			</a>
		</div>
		<div class="col-sm-6">
			<a href="#/roadService" class="btn btn-primary btn-myaccount">
				<i class="fa fa-car" aria-hidden="true"></i>
				Roadside Assistance History
			</a>
		</div>
	</div>
	<div class="row home-page-links">
		<div class="col-sm-6">
			<a href="/myaccount/giftManagement.jsp" class="btn btn-primary btn-myaccount">
				<i class="fa fa-gift" aria-hidden="true"></i>
				Gift Management
			</a>
		</div>
	</div>
	<!-- <div class="row home-page-links">
		<div class="col-sm-6">
			<a class="btn btn-primary btn-myaccount">
				<i class="fa fa-truck" aria-hidden="true"></i> Roadside
				Assistance Call
			</a>
		</div>
	</div> -->
</div>

<div class="container" ng-show="debug">
	<h4>Member:</h4>
	{{Member}}
</div>