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
			<label>Available Call Count</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Primary.RoadService.AvailableCallCount }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Eligible:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Primary.RoadService.Eligible }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Permitted Call Count:</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Primary.RoadService.PermittedCallCount }}
		</div>
	</div>
	<div class="row">
		<div class="col-sm-3 col-xs-6">
			<label>Used Call Count</label>
		</div>
		<div class="col-sm-3 col-xs-6">
			{{ Member.Primary.RoadService.UsedCallCount }}
		</div>
	</div>
</div>

<div class="container">
	<div class="row">
		<div class="col-sm-12">
			<div class="form-group text-right nl-submit">
				<a href="#/" type="button" class="btn btn-primary">BACK</a>
			</div>
		</div>
	</div>
</div>

<div class="container" ng-show="debug">
	<h4>Member.Primary.RoadService</h4>
	{{ Member.Primary.RoadService }}
</div>