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