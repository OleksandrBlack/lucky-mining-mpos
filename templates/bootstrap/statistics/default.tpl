  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <span class="generalstatistics">General Statistics</span>
      </div>
      <div class="panel-body">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
            <tr>
              <td class="leftheader"><span class="dasha8">Pool Hash Rate1</span></td>
              <td>{$GLOBAL.hashrate} {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <td class="leftheader"><span class="roundd6">Current Total Miners</span></td>
              <td>{$GLOBAL.workers}</td>
            </tr>
            <tr>
              <td class="leftheader"><span class="dashb5">Current Block</span></td>
              <td><a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCK}" target="_new">{$CURRENTBLOCK}</a></td>
            </tr>
            <tr>
              <td class="leftheader"><span class="statsdifficulty">Current Difficulty</span></td>
              <td><a href="http://allchains.info/" target="_new">{$DIFFICULTY}</a></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="panel-footer">
        {if !$GLOBAL.website.api.disabled}<ul><li><span class="roundd7">These stats are also available in JSON format</span> <a href="{$smarty.server.SCRIPT_NAME}?page=api&action=public" target="_api"><span class="geta6">HERE</span></a></li>{/if}
      </div>
    </div>
  </div>
</div>
