
  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-user-md fa-fw"></i> <span class="dashd1">Account Information</span></h4>
      </div>
      <div class="panel-body no-padding">
        <table class="table table-bordered table-hover table-striped">
          <tr>
            <td colspan="2">
    {if $GLOBAL.userdata.no_fees}
            <span class="dashd2">You are mining without any pool fees applied and</span>
    {else if $GLOBAL.fees > 0}
            <span class="dashd3">You are mining at</span> <font color="orange">{if $GLOBAL.fees < 0.0001}{$GLOBAL.fees|escape|number_format:"8"}{else}{$GLOBAL.fees|escape}{/if}%</font> <span class="dashd4">pool fee and</span>
    {else}
            <span class="dashd5">This pool does not apply fees and</span>
    {/if}
    {if $GLOBAL.userdata.donate_percent > 0}
            <span class="dashd6">you donate</span> <font color="green">{$GLOBAL.userdata.donate_percent|escape}%</font>.
    {else}
            <span class="dashd7">you are not</span> <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=edit"><span class="dashd8">donating</span></a>.
    {/if}
            </td>
          </tr>
        </table>
        <table class="table table-bordered table-hover table-striped">
          <thead>
		  
            <tr><th colspan="2"><center><span class="dashd9">Account</span> {$GLOBAL.config.currency} <span class="dashe1">Balance</span></center></th></tr>
			
          </thead>
          <tbody>
            <tr>
              <th><span class="dashe2">Confirmed</span></th>
              <th>
                <span class="label label-success pull-right bigfont" id="b-confirmed">{$GLOBAL.userdata.balance.confirmed|number_format:"6"}</span>
              </th>
            </tr>
            <tr>
              <th><span class="dashe3">Unconfirmed</span></th>
              <th>
                <span class="label label-warning pull-right bigfont" id="b-unconfirmed">{$GLOBAL.userdata.balance.unconfirmed|number_format:"6"}</span>
              </th>
            </tr>
          </tbody>
        </table>

		  
	  </div>
	  <table class="table table-striped table-bordered table-condensed">
		  		<thead>  
			<tr><b><center><span class="dashg1">Crediting</span> {$GLOBAL.config.currency} <span class="dashg2">for the last 24 hours.</span></center></b></tr>
		</thead>
                    <thead>
                      <tr>
                        <th><center><span class="dashg3">Credited</span></center></th>
                        <th><center><span class="dashg4">Paid</span></center></th>
                        <th><center><span class="dashg5">TXFee</span></center></th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td>{$BYTIME.24HourCredit|number_format:"8"}</td>
                        <td>{$BYTIME.24HourDebitAP|number_format:"8"}</td>
                        <td>{$BYTIME.24HourTXFee|number_format:"8"}</td>
                      </tr>
                    </tbody>
                  </table>
    </div>
  </div>
