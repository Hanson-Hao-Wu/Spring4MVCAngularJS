<div class="container highlight bg-info" ng-repeat="associate in Member.Associate">
	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"> 
						Name:
					</div>
					<input type="text" class="form-control" placeholder="Email Address" value="{{associate.AssocFirstName + ' ' + associate.AssocLastName}}" disabled="">
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"> 
						Membership Type:
					</div>
					<input type="text" class="form-control" placeholder="Email Address" ng-model="associate.AssocCoverageDesc" disabled>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="col-sm-6">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"> 
						AssocUMC
					</div>
					<input type="text" class="form-control" placeholder="Email Address" ng-model="associate.AssocUMC" disabled>
				</div>
			</div>
		</div>
		<div class="col-sm-6">
			<div class="form-group">
				<div class="input-group">
					<div class="input-group-addon"> 
						Email Address
					</div>
					<input type="text" class="form-control" placeholder="Email Address" ng-model="associate.InqAssocEmail">
				</div>
			</div>
		</div>
		<div class="col-sm-12">
			<div class="form-group pull-right">
				<a href="">Remove This Member</a>
			</div>
		</div>
	</div>
</div>

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
	<h4>Member.Associate</h4>
	{{ Member.Associate }}
</div>