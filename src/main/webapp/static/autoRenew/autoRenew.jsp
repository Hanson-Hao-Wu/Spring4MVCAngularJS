<div class="container highlight bg-info">
	<div>
		<h3>Payment Information</h3>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Name</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Primary.PriFirstName }} {{ Member.Primary.PriLastName }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Expiration Date:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Membership.ExpiryDate | date:'MM/dd/yyyy' }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Membership Type:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Primary.PriCoverageDesc }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Account Balance:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Membership.AutoRenewBalance | currency }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Rate Type:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			<label>{{ Member.Primary.PriRateType }}</label> ({{ Member.Primary.PriRateDesc }})
		</div>
	</div>
</div>
<div class="container">
	<div>
		<h3>Payment Information</h3>
	</div>
	<form action="">
		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"> 
							Payment Method:
							<sup><i class="fa fa-asterisk"></i></sup>
						</div>
						<input type="text" class="form-control" placeholder="Payment Method" ng-model="Member.ACCR.CreditCardCode">
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"> 
							Credit Card #: 
						</div>
						<input type="text" class="form-control" ng-click="emptyCCNum()" placeholder="Credit Card Number" ng-model="Member.ACCR.CreditCardNum">
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-sm-6">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"> 
							Name on Card: 
							<sup><i class="fa fa-asterisk"></i></sup>
						</div>
						<input type="text" class="form-control" placeholder="Name on Card">
					</div>
				</div>
			</div>
			<div class="col-sm-6">
				<div class="form-group">
					<div class="input-group">
						<div class="input-group-addon"> 
							Expiry Date
							<sup><i class="fa fa-asterisk"></i></sup>
						</div>
						<input type="text" class="form-control" placeholder="Expiry Date">
					</div>
				</div>
			</div>
		</div>

		<div class="row" ng-show="debug">
			<h4>Member.ACCR</h4>
			{{Member.ACCR}}
		</div>

		<div class="row">
			<div class="col-sm-12">
				<div class="form-group text-right nl-submit">
					<a href="#/" type="button" class="btn btn-primary">BACK</a>
					<button type="button" class="btn btn-danger">SAVE</button>
				</div>
			</div>
		</div>
	</form>
</div>

<div class="container" ng-show="Member.MPP">
	<div>
		<h3>Monthly Payment Schedule</h3>
	</div>
	<div class="row">
		<div class="col-sm-12">
			<table class="table table-condensed table-hover">
				<thead>
					<tr>
						<td class="text-left"><strong>Payment Date</strong></td>
						<td class="text-right"><strong>Amount Due</strong></td>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="MonthlyPayment in Member.MPP.MonthlyPayments.MonthlyPayment | orderBy : 'Date'">
						<td class="text-left">{{ MonthlyPayment.Date | date: 'MMMM dd yyyy' }}</td>
						<td class="text-right">{{ MonthlyPayment.Amount | currency}}</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
</div>

<div class="container" ng-show="debug">
	<h4>Member.MPP.MonthlyPayments.MonthlyPayment</h4>
	{{Member.MPP.MonthlyPayments.MonthlyPayment}}
</div>