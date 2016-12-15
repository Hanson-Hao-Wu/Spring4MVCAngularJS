<div class="generic-container" ng-controller="UserController as ctrl">
	<div class="container highlight bg-info">
		<h3>List of Users</h3>
		<div class="row">
			<form ng-submit="ctrl.submit()" name="myForm" class="form-horizontal">
				<input type="hidden" ng-model="ctrl.user.id" />

				<div class="form-group col-md-12">
					<label class="col-md-2 control-lable" for="uname">Name</label>
					<div class="col-md-7">
						<input type="text" ng-model="ctrl.user.username" id="uname"
							class="username form-control input-sm"
							placeholder="Enter your name" required ng-minlength="3" />
						<div class="has-error" ng-show="myForm.$dirty">
							<span ng-show="myForm.uname.$error.required">This is a
								required field</span> <span ng-show="myForm.uname.$error.minlength">Minimum
								length required is 3</span> <span ng-show="myForm.uname.$invalid">This
								field is invalid </span>
						</div>
					</div>
				</div>

				<div class="form-group col-md-12">
					<label class="col-md-2 control-lable" for="address">Address</label>
					<div class="col-md-7">
						<input type="text" ng-model="ctrl.user.address" id="address"
							class="form-control input-sm"
							placeholder="Enter your Address. [This field is validation free]" />
					</div>
				</div>

				<div class="form-group col-md-12">
					<label class="col-md-2 control-lable" for="email">Email</label>
					<div class="col-md-7">
						<input type="email" ng-model="ctrl.user.email" id="email"
							class="email form-control input-sm"
							placeholder="Enter your Email" required />
						<div class="has-error" ng-show="myForm.$dirty">
							<span ng-show="myForm.email.$error.required">This is a
								required field</span> <span ng-show="myForm.email.$invalid">This
								field is invalid </span>
						</div>
					</div>
				</div>

				<div class="col-md-12">
					<input type="submit" value="{{!ctrl.user.id ? 'Add' : 'Update'}}"
						class="btn btn-primary btn-sm" ng-disabled="myForm.$invalid">
					<button type="button" ng-click="ctrl.reset()"
						class="btn btn-warning btn-sm" ng-disabled="myForm.$pristine">Reset
						Form</button>
				</div>
			</form>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<h3>List of Users</h3>

			<table class="table table-hover">
				<thead>
					<tr>
						<th>ID.</th>
						<th>Name</th>
						<th>Address</th>
						<th>Email</th>
						<th width="20%"></th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="u in ctrl.users">
						<td><span ng-bind="u.id"></span></td>
						<td><span ng-bind="u.username"></span></td>
						<td><span ng-bind="u.address"></span></td>
						<td><span ng-bind="u.email"></span></td>
						<td>
							<button type="button" ng-click="ctrl.edit(u.id)"
								class="btn btn-success custom-width">Edit</button>
							<button type="button" ng-click="ctrl.remove(u.id)"
								class="btn btn-danger custom-width">Remove</button>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>