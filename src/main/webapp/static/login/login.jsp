<div class="container highlight bg-info">
	<div class="row">
		<div class="col-sm-12">
			<form ng-submit="login(membershipNumber)" name='form'>
				<div class="form-group">
					<label for="exampleInputEmail1">Member:</label> {{ membershipNumber }}
					<select class="form-control" placeholder="Member" ng-model="membershipNumber">
						<option value="member1">member1</option>
						<option value="member2">member2</option>
					</select>
				</div>
				<div class="checkbox">
					<label>
						<input type="checkbox" ng-model='debugMode'> Debug Mode
					</label>
				</div>
				<button type="submit" class="btn btn-danger">Submit</button>
			</form>
		</div>
	</div>
</div>

<div class="container" ng-show="debug">
	<h4>Member</h4>
	{{Member}}
</div>