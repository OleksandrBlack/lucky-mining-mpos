  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-tachometer fa-fw"></i><span class="contributorhashrates">Contributor Hashrates</span>
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-striped table-bordered table-hover">
          <thead>
            <tr>
              <th class="rank">Rank</th>
              <th class="donor">Donor</th>
              <th class="username">User Name</th>
              <th class="text-right">{$GLOBAL.hashunits.personal}</th>
              <th class="text-right">{$GLOBAL.config.currency}/<span class="day">Day</span></th>
              {if $GLOBAL.config.price.enabled}
              {if $GLOBAL.config.price.currency}<th class="text-right">{$GLOBAL.config.price.currency}/<span class="day">Day</span></th>{/if}
               {/if}
            </tr>
          </thead>
          <tbody>
{assign var=rank value=1}
{assign var=listed value=0}
{section contrib $CONTRIBHASHES}
      {if $GLOBAL.config.algorithm == 'equihash'}
        {math assign="estday" equation="round( ( hashrate * 1000 ) / nethashrate * ( reward * ( 60 * 24 / 2.5 )), 1)" reward=$REWARD hashrate=$CONTRIBHASHES[contrib].hashrate nethashrate=$GLOBAL.nethashrate}
      {else}
        {math assign="estday" equation="round(reward / ( diff * pow(2,32) / ( hashrate * 1000 ) / 3600 / 24), 3)" diff=$DIFFICULTY reward=$REWARD hashrate=$CONTRIBHASHES[contrib].hashrate}
      {/if}
            {if $GLOBAL.userdata.username|default:""|lower == $CONTRIBHASHES[contrib].account|lower}{assign var=listed value=1}<tr class="success">{else}<tr>{/if}
              <td>{$rank++}</td>
              <td>{if $CONTRIBHASHES[contrib].donate_percent|default:"0" >= 2}<i class="fa fa-trophy fa-fw"></i>{elseif $CONTRIBHASHES[contrib].donate_percent|default:"0" < 2 AND $CONTRIBHASHES[contrib].donate_percent|default:"0" > 0}<i class="fa fa-star-o fa-fw"></i>{else}<i class="fa fa-ban fa-fw"></i>{/if}</td>
              <td>{if $CONTRIBHASHES[contrib].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$CONTRIBHASHES[contrib].account|escape}{/if}</td>
              <td class="text-right">{($CONTRIBHASHES[contrib].hashrate * $GLOBAL.hashmods.personal)|number_format:"1"}</td>
              <td class="text-right">{$estday|number_format:"0"}</td>
              {if $GLOBAL.config.price.enabled}
              {if $GLOBAL.config.price.currency}<td class="text-right">{($estday * $GLOBAL.price / 1000000)|default:"n/a"|number_format:"1"}</td>{/if}
              {/if}
            </tr>
{/section}
{if $listed != 1 && $GLOBAL.userdata.username|default:"" && $GLOBAL.userdata.rawhashrate|default:"0" > 0}
      {if $GLOBAL.config.algorithm == 'equihash'}
        {math assign="myestday" equation="round( ( hashrate * 1000 ) / nethashrate * ( reward * ( 60 * 24 / 2.5 )), 4)" reward=$REWARD hashrate=$GLOBAL.userdata.rawhashrate nethashrate=$GLOBAL.nethashrate}
      {else}
        {math assign="myestday" equation="round(reward / ( diff * pow(2,32) / ( hashrate * 1000 ) / 3600 / 24), 3)" diff=$DIFFICULTY reward=$REWARD hashrate=$GLOBAL.userdata.rawhashrate}
      {/if}
            {if $GLOBAL.userdata.username|default:""|lower == $CONTRIBHASHES[contrib].account|lower}{assign var=listed value=1}<tr class="success">{else}<tr>{/if}
              <td>n/a</td>
              <td>{if $GLOBAL.userdata.donate_percent|default:"0" >= 2}<i class="fa fa-trophy fa-fw"></i>{elseif $GLOBAL.userdata.donate_percent|default:"0" < 2 AND $GLOBAL.userdata.donate_percent|default:"0" > 0}<i class="fa fa-star-o fa-fw"></i>{else}<i class="fa fa-ban fa-fw"></i>{/if}</td>
              <td>{$GLOBAL.userdata.username|escape}</td>
              <td class="text-right">{$GLOBAL.userdata.rawhashrate * $GLOBAL.hashmods.personal|number_format:"3"}</td>
              <td class="text-right">{$myestday|number_format:"4"|default:"n/a"}</td>
              {if $GLOBAL.config.price.enabled}
              {if $GLOBAL.config.price.currency}<td class="text-right">{($myestday * $GLOBAL.price)|default:"n/a"|number_format:"2"}</td>{/if}
              {/if}
            </tr>
{/if}
          </tbody>
        </table>
      </div>
      <div class="panel-footer">
          <h6>
          <i class="fa fa-ban fa-fw"></i><span class="nodonation">no donation</span>
          <i class="fa fa-star-o fa-fw"></i> 0&#37;&#45;2&#37; <span class="donation">donation</span>
          <i class="fa fa-trophy fa-fw"></i> 2&#37; <span class="ormoredonation">or more Donation</span>
          </h6>
      </div>
    </div>
  </div>

