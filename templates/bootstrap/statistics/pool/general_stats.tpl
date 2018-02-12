  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bar-chart-o fa-fw"></i> <span class="generalstatistics">General Statistics</span>
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
		    <tr>
              <th width="50%"><span class="statsprice">Price </span> {$GLOBAL.config.currency}</th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.price|default:"0"|number_format:"3"} {$GLOBAL.config.price.currency}</td>
            </tr>
		  <tr>
              <th width="50%"><span class="statsnetrate">Network hashrate</span></th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.nethashrate|number_format:"3"} </span>{$GLOBAL.hashunits.network}</td>
            </tr>
            <tr>
              <th width="50%"><span class="statspoolrate">Pool hashrate</span></th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.hashrate|number_format:"3"}</span> {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <th><span class="statspooleff">Pool Efficiency</span></th>
              <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
            </tr>
            <tr>
              <th><span class="statsworkers">Current Active Workers</span></th>
              <td id="b-workers">{$GLOBAL.workers|number_format}</td>
            </tr>
            <tr>
              <th><span class="statsdifficulty">Current Difficulty</span></th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></a></td>
              {else}
              <td><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></td>
              {/if}
            </tr>
            <tr>
              <th><span class="statsnextdifficulty">Est. Next Difficulty</span></th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new">{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</a></td>
              {else}
              <td>{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</td>
              {/if}
            </tr>
            <tr>
              <th><span class="statstimeroundnet">Est. Avg. Time per Round (Network)</span></th>
              <td>{$NETWORK.EstTimePerBlock|seconds_to_words}</td>
            </tr>
            <tr>
              <th><span class="statstimeroundpool">Est. Avg. Time per Round (Pool)</span></th>
              <td>{$ESTTIME|seconds_to_words}</td>
            </tr>
            <tr>
              <th><span class="statssharesround">Est. Shares this Round</span></th>
              <td id="b-target">{$ESTIMATES.shares|number_format:$GLOBAL.config.sharediffprecision} (done: {$ESTIMATES.percent}%)</td>
            </tr>
            {if ! $GLOBAL.website.blockexplorer.disabled}
            <tr>
              <th width="50%"><span class="statsnextnetblock">Next Network Block</span></th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (Current: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK|number_format})</a></td>
            </tr>
            {else}
            <tr>
              <th><span class="statsnextnetblock">Next Network Block</span></th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (Current: {$CURRENTBLOCK|number_format})</td>
            </tr>
            {/if}
            <tr>
              <th><span class="dashh1">Last Block Found</span></th>
              <td colspan="3"><a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"|number_format}</a></td>
            </tr>
            <tr>
              <th><span class="statslastblocktime">Time Since Last Block</span></th>
              <td colspan="3">{$TIMESINCELAST|seconds_to_words}</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="panel-footer">
      
      </div>
    </div>
  </div>
