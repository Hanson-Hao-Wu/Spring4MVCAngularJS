<div class="container highlight bg-info">
	<form action="" name="assocForm">
		<h3>Add Associate</h3>
		<div class="row">
			<!-- First Name -->
			<div class="col-sm-12">
				<div class="form-group">
					<div class="input-group" ng-class="{'has-error': assocForm.AssocFirstName.$invalid && assocForm.AssocFirstName.$dirty, 'has-success': assocForm.AssocFirstName.$valid }">
						<span class="input-group-addon">
							First Name:<sup><i class="fa fa-asterisk"></i></sup>
						</span>
						<input type="text" ng-model='associate.AssocFirstName' name="AssocFirstName" class="form-control" placeholder="First Name" required />
					</div>
				</div>
			</div>
			<div class="col-sm-12" ng-show="assocForm.AssocFirstName.$dirty && assocForm.AssocFirstName.$invalid">
				<div class="alert alert-danger">
					<div ng-show="assocForm.AssocFirstName.$error.required">First Name is required</div>
				</div>
			</div>

			<div class="col-sm-12" ng-show="debug">
				<h4>AssocFirstName Debug</h4>
				<div>$invalid: {{assocForm.AssocFirstName.$invalid}}</div>
				<div>$dirty: {{assocForm.AssocFirstName.$dirty}}</div>
				<div>$valid: {{assocForm.AssocFirstName.$valid}}</div>
			</div>
			

			<!-- Last Name -->
			<div class="col-sm-12">
				<div class="form-group">
					<div class="input-group" ng-class="{'has-error': assocForm.AssocLastName.$invalid && assocForm.AssocLastName.$dirty, 'has-success': assocForm.AssocLastName.$valid }">
						<span class="input-group-addon">
							Last Name:<sup><i class="fa fa-asterisk"></i></sup>
						</span>
						<input type="text" ng-model='associate.AssocLastName' name="AssocLastName" class="form-control" placeholder="Last Name" required />
					</div>
				</div>
			</div>

			<div class="col-sm-12" ng-show="assocForm.AssocLastName.$dirty && assocForm.AssocLastName.$invalid">
				<div class="alert alert-danger">
					<div ng-show="assocForm.AssocLastName.$error.required">Last Name is required</div>
				</div>
			</div>

			<!-- Email -->
			<div class="col-sm-12">
				<div class="form-group">
					<div class="input-group" ng-class="{'has-error': assocForm.email.$invalid && assocForm.email.$dirty, 'has-success': assocForm.email.$valid }">
						<span class="input-group-addon">
							Email:<sup><i class="fa fa-asterisk"></i></sup>
						</span>
						<input type="email" name="email" ng-model='associate.InqAssocEmail' class="form-control" placeholder="Email" required />
					</div>
				</div>
			</div>

			<div class="col-sm-12" ng-show="assocForm.email.$dirty && assocForm.email.$invalid">
				<div class="alert alert-danger">
					<div ng-show="assocForm.email.$error.email">That is not a valid email</div>
					<div ng-show="assocForm.email.$error.required">Email is required</div>
				</div>
			</div>

			<!-- jquery UI date picker dob -->
			<!-- <div class="col-sm-12">
				<div class="form-group">
					<div class="input-group">
						<span class="input-group-addon">
							Birthday:<sup><i class="fa fa-asterisk"></i></sup>
						</span>
						<input type="date" id="birthday" class="form-control" placeholder="Birthday ( yyyy-mm-dd )">
					</div>
				</div>
			</div> -->

			<div class="col-sm-12">
				<div class="form-group">
					<div class="input-group" id="datetimepicker"  ng-class="{'has-error': assocForm.AssocBirthDate.$invalid && assocForm.AssocBirthDate.$dirty, 'has-success': assocForm.AssocBirthDate.$valid }">
						<span class="input-group-addon">
							Birthday:<sup><i class="fa fa-asterisk"></i></sup>
						</span>
						<input type="text" ng-model='associate.AssocBirthDate' ng-pattern="/^\d{4}-\d{2}-\d{2}$/" name="AssocBirthDate" data-format="yyyy-MM-dd" id="birthday" class="form-control add-on" placeholder="Birthday ( yyyy-mm-dd )" required>
					</div>
				</div>
			</div>
			<div class="col-sm-12" ng-show="assocForm.AssocBirthDate.$dirty && assocForm.AssocBirthDate.$invalid">
				<div class="alert alert-danger">
					<div ng-show="assocForm.AssocBirthDate.$error.required">Birthday is required</div>
					<div ng-show="assocForm.AssocBirthDate.$error.pattern">Birthday farmat is ( yyyy-mm-dd )</div>
				</div>
			</div>

			<script type="text/javascript">
			//jquery UI date picker dob
			$("#birthday").datepicker({
				dateFormat: "yy-mm-dd"
			});

			/*dateTimePicker
			$('#datetimepicker').datetimepicker({
				pickTime: false
			});*/
			</script>

			<div class="col-sm-12">
				<div class="form-group text-right">
					<button type="button" class="btn btn-danger" ng-disabled="assocForm.$invalid" ng-click="addAssociate(assocForm)">ADD</button>
				</div>
			</div>
			<div class="col-sm-12" ng-show="debug">
				<h4>assocForm</h4>
				<div>$invalid: {{assocForm.$invalid}}</div>
				<div>$dirty: {{assocForm.$dirty}}</div>
				<div>$valid: {{assocForm.$valid}}</div>
				<div>$pristine: {{assocForm.$pristine}}</div>
			</div>
		</div>

		<div class="row" ng-show="debug">
			<div class="col-sm-12">
				<h4>assocForm</h4>
				{{assocForm}}
			</div>
		</div>
	</form>

	<div class="row" ng-show="debug">
		<div class="col-sm-12">
			<h4>associate:</h4>
			{{ associate }}
		</div>
	</div>
</div>