<div class="container" ng-controller="storeController as store">
	<div ng-repeat="product in store.products | orderBy: 'price'">
		{{ product }}
		{{ product.price | currency }}
		<div ng-show="{{product.canBuy}}"><button>Buy</button></div>
	</div>
</div>