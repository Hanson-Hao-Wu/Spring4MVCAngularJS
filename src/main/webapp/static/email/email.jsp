<form action="">
	<div ng-repeat="ContactMethod in Member.Primary.ContactMethods.ContactMethod">
		<div class="container highlight bg-info">
			<div class="row" ng-show="ContactMethod.ContactMethodCode == 'E' || ContactMethod.ContactMethodCode == 'EW'">
				<div class="col-sm-6">
					<div class="form-group">
						<div class="input-group">
							<div class="input-group-addon"> 
								Email Address ( {{ ContactMethod.ContactMethodCode }} )
							</div>
							<input type="text" class="form-control" placeholder="Email" ng-model="ContactMethod.ContactMethodReference">
						</div>
					</div>
				</div>
				<div class="col-sm-6 checkbox">
					<label>
						<input type="checkbox" ng-model="ContactMethod.ContactMethodDirMkt">
						ContactMethodDirMkt
					</label>
				</div>

				<div class="row">
					<div class="col-sm-6 col-sm-offset-6">
						<input type="checkbox" ng-model="ContactMethod.ContactMethodEbill">
						ContactMethodEbill
					</div>
				</div>
			</div>
		</div>
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
</form>
<div class="container" ng-show="debug">
	<h4>Member.Primary.ContactMethods.ContactMethod</h4>
	<p>{{Member.Primary.ContactMethods.ContactMethod}}</p>
</div>