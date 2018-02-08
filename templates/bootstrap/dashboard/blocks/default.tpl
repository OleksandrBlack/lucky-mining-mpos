{if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-desktop fa-fw"></i><span class="dashh1">Last Found Blocks</span></h4>
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-bordered table-hover table-striped"> 
         <thead>
          <tr>
            <th class="text-center"><span class="dashh2">Height</span></th>
            <th class="text-center"><span class="dashh3">Finder</span></th>
            <th class="text-center"><span class="dashh4">Time</span></th>
            <th class="text-center"><span class="dashh5">Difficulty</span></th>
            <th class="text-center"><span class="dashh6">Amount</span></th>
            <th class="text-center"><span class="dashh7">Expected Shares</span></th>
            <th class="text-center"><span class="dashh8">Actual Shares</span></th>
            <th class="text-center"><span class="dashh9">Percentage</span></th>
          </tr>
          </thead>
          <tbody id="b-blocks">
{section block $BLOCKSFOUND}
            <tr>
              <td class="center"><a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$BLOCKSFOUND[block].height}">{$BLOCKSFOUND[block].height}</a></td>
              <td>{if $BLOCKSFOUND[block].is_anonymous|default:"0" == 1 && $GLOBAL.userdata.is_admin|default:"0" == 0}anonymous{else}{$BLOCKSFOUND[block].finder|default:"unknown"|escape}{/if}</td>
              <td class="center">{$BLOCKSFOUND[block].time|date_format:$GLOBAL.config.date}</td>
              <td class="center">{$BLOCKSFOUND[block].difficulty|number_format:"4"}</td>
              <td class="center">{$BLOCKSFOUND[block].amount|number_format:"2"}</td>
              <td class="center">{$BLOCKSFOUND[block].estshares|number_format:$GLOBAL.config.sharediffprecision}</td>
              <td class="center">{$BLOCKSFOUND[block].shares|number_format:$GLOBAL.config.sharediffprecision}</td>
              <td class="center">
                {math assign="percentage" equation="shares / estshares * 100" shares=$BLOCKSFOUND[block].shares|default:"0" estshares=$BLOCKSFOUND[block].estshares}
                <font color="{if ($percentage <= 100)}green{else}red{/if}">{$percentage|number_format:"2"}</font>
              </td>
            </tr>
{/section}
          </tbody>
        </table>
      </div>
      {if $GLOBAL.website.blockfindersound.enabled|default:"1"}
      <div id="togglesound" class="togglesound">
        <div class="panel-footer text-right">
          <button id="muteButton" type="button" class="btn-xs btn-success toggleSoundButton"><i class="fa fa-volume-up"></i></button>
        </div>
      </div>
      {/if}
    </div>
  </div>
{/if}