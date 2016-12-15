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
				<div>$invalid：{{assocForm.AssocFirstName.$invalid}}</div>
				<div>$dirty：{{assocForm.AssocFirstName.$dirty}}</div>
				<div>$valid：{{assocForm.AssocFirstName.$valid}}</div>
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
				<div>$invalid：{{assocForm.$invalid}}</div>
				<div>$dirty：{{assocForm.$dirty}}</div>
				<div>$valid：{{assocForm.$valid}}</div>
				<div>$pristine:{{assocForm.$pristine}}</div>
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
<!-- /add associate -->


<!-- member list -->

<div class="container">
	<div class="row" ng-show="debug">
		<div class="col-sm-12">DEBUG Associate Size:{{Member.Associate.length}}</div>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<ul class="list-group nl-memberlist">
				<li class="list-group-item active clearfix"><label
					class="pull-left nl-title">MEMBER(S)</label> <label
					class="pull-right nl-title">COST</label></li>
				<li class="list-group-item clearfix">
					<label class="pull-left">{{ Member.Primary.PriFirstName }} {{ Member.Primary.PriLastName }}</label>
					<label class="pull-right">{{ Member.Primary.PriAmtDue | currency }}</label>
				</li>
				<li class="list-group-item clearfix" ng-repeat="associate in Member.Associate">
					<label class="pull-left">{{associate.AssocFirstName}} {{ associate.AssocLastName }}</label> 
					<a ng-hide="associate.AssocUMC" ng-click="removeAssociate(associate)">Remove</a>
					<label class="pull-right">{{ associate.AssocAmtDue | currency }}</label>
				</li>
			</ul>
		</div>
		<div class="col-sm-6 col-sm-offset-6">
			<ul class="list-group nl-price-list">
				<li class="list-group-item clearfix">
					<label class="pull-left">Base Price</label>
					<label class="pull-right">{{ Member.Membership.Pricing.MembershipPricing.BasePrice | currency }}</label>
				</li>
				<li class="list-group-item clearfix">
					<label class="pull-left">Tax Amount:</label>
					<label class="pull-right">{{ Member.Membership.Pricing.MembershipPricing.Taxes.Tax.TaxAmount | currency }}</label>
				</li>
				<li class="list-group-item clearfix bold">
					<label class="pull-left">TOTAL DUE:</label>
					<label class="pull-right">{{ Member.Membership.Pricing.MembershipPricing.TotalPrice | currency }}</label>
				</li>
			</ul>
		</div>
	</div>
</div>
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