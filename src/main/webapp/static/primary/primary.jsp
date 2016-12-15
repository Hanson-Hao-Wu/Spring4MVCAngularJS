<div class="container highlight bg-info">
    <div class="row">
        <div class="col-sm-3 col-xs-6">
            <label>Name</label>
        </div>
        <div class="col-sm-3 col-xs-6">
            <label>{{ Member.Primary.PriFirstName }} {{ Member.Primary.PriLastName }}</label>
        </div>
        <div class="col-sm-3 col-xs-6">
            <label>Expiration Date:</label>
        </div>
        <div class="col-sm-3 col-xs-6">
            <label>{{Member.Membership.ExpiryDate | date:'MM/dd/yyyy' }}</label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-xs-6">
            <label>Membership Type:</label>
        </div>
        <div class="col-sm-3 col-xs-6">
            <label>{{ Member.Primary.PriCoverageDesc }}</label>
        </div>
        <div class="col-sm-3 col-xs-6">
            <label>Account Balance:</label>
        </div>
        <div class="col-sm-3 col-xs-6">
            <label>{{Member.Membership.AutoRenewBalance | currency }}</label>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-3 col-sm-offset-3">
            <a href="">upgrade</a>
            <a href="">downgrade</a>
            <a href="">cancel</a>
        </div>
    </div>
</div>
<div class="container">
    <form action="">
        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Address1
                            <sup><i class="fa fa-asterisk"></i></sup>
                        </div>
                        <input type="text" class="form-control" placeholder="Address1" ng-model="Member.Address.Address1">
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Address2
                        </div>
                        <input type="text" class="form-control" placeholder="Address2">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            City
                            <sup><i class="fa fa-asterisk"></i></sup>
                        </div>
                        <input type="text" class="form-control" placeholder="City" ng-model="Member.Address.City">
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Province
                            <sup><i class="fa fa-asterisk"></i></sup>
                        </div>
                        <input type="text" class="form-control" placeholder="Province" ng-model="Member.Address.Province">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Postal Code
                            <sup><i class="fa fa-asterisk"></i></sup>
                        </div>
                        <input type="text" class="form-control" placeholder="Postal Code" ng-model="Member.Address.PostalCode">
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Email Address
                            <sup><i class="fa fa-asterisk"></i></sup>
                        </div>
                        <input type="text" class="form-control" placeholder="Email Address" ng-model="Member.Primary.InqPriEmail">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Home Phone #
                        </div>
                        <input type="text" class="form-control" placeholder="Home Phone" ng-model="homePhone">
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Bus Phone #
                        </div>
                        <input type="text" class="form-control" placeholder="Bus Phone" ng-model="busPhone">
                    </div>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="col-sm-6">
                <div class="form-group">
                    <div class="input-group">
                        <div class="input-group-addon"> 
                            Cell Phone #
                        </div>
                        <input type="text" class="form-control" placeholder="Cell Phone" ng-model="cellPhone">
                    </div>
                </div>
            </div>
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

<div class="container" ng-show="debug">
    <h4>Member.Address:</h4>
    {{Member.Address}}
</div>