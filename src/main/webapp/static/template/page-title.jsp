<div class="container" >
	<div class="row">
		<div class="page-header">
			<h1>{{ pageTitle }}</h1>
		</div>
	</div>
</div>
<div class="container highlight bg-danger" ng-show=" Member.Membership.AutoRenewBalance > 0 ">
	<div class="row">
		<div class="col-sm-12">
			Your balance is {{Member.Membership.AutoRenewBalance | currency }}.
		</div>
		<div class="col-sm-12">
			<a href="">Renew Today!</a>
		</div>
	</div>
</div>