  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <i class="fa fa-spinner fa-fw"></i> <span class="dashb3">Round Information</span>
        </h4>
      </div>
      {assign var=PAYOUT_SYSTEM value=$GLOBAL.config.payout_system}
      {include file="dashboard/round_statistics/$PAYOUT_SYSTEM/round.tpl"}
    </div>
  </div>
  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title">
          <i class="fa fa-cloud fa-fw"></i> <span class="dashb4">Share Information</span>
        </h4>
      </div>
      {assign var=PAYOUT_SYSTEM value=$GLOBAL.config.payout_system}
      {include file="dashboard/round_statistics/$PAYOUT_SYSTEM/shares.tpl"}
    </div>
  </div>
