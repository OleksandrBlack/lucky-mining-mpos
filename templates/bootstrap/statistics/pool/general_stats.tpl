  <div class="col-lg-6">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-bar-chart-o fa-fw"></i> Общая информация
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-striped table-bordered table-hover">
          <tbody>
		    <tr>
              <th width="50%">Стоимость {$GLOBAL.config.currency}</th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.price|default:"0"|number_format:"3"} {$GLOBAL.config.price.currency}</td>
            </tr>
		  <tr>
              <th width="50%">Хешрейт Сети</th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.nethashrate|number_format:"3"} </span>{$GLOBAL.hashunits.network}</td>
            </tr>
            <tr>
              <th width="50%">Хешрейт Пула</th>
              <td width="70%"><span id="b-hashrate">{$GLOBAL.hashrate|number_format:"3"}</span> {$GLOBAL.hashunits.pool}</td>
            </tr>
            <tr>
              <th>Эффективность пула</th>
              <td>{if $GLOBAL.roundshares.valid > 0}{($GLOBAL.roundshares.valid / ($GLOBAL.roundshares.valid + $GLOBAL.roundshares.invalid) * 100)|number_format:"2"}%{else}0%{/if}</td>
            </tr>
            <tr>
              <th>Активных ферм</th>
              <td id="b-workers">{$GLOBAL.workers|number_format}</td>
            </tr>
            <tr>
              <th>Текущая сложность</th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new"><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></a></td>
              {else}
              <td><span id="b-diff">{$NETWORK.difficulty|number_format:"8"}</span></td>
              {/if}
            </tr>
            <tr>
              <th>Est. Next Difficulty</th>
              {if ! $GLOBAL.website.chaininfo.disabled}
              <td><a href="{$GLOBAL.website.chaininfo.url}" target="_new">{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</a></td>
              {else}
              <td>{$NETWORK.EstNextDifficulty|number_format:"8"} (Change in {$NETWORK.BlocksUntilDiffChange} Blocks)</td>
              {/if}
            </tr>
            <tr>
              <th>Est. Avg. Time per Round (Network)</th>
              <td>{$NETWORK.EstTimePerBlock|seconds_to_words}</td>
            </tr>
            <tr>
              <th>Est. Avg. Time per Round (Pool)</th>
              <td>{$ESTTIME|seconds_to_words}</td>
            </tr>
            <tr>
              <th>Est. Shares this Round</th>
              <td id="b-target">{$ESTIMATES.shares|number_format:$GLOBAL.config.sharediffprecision} (done: {$ESTIMATES.percent}%)</td>
            </tr>
            {if ! $GLOBAL.website.blockexplorer.disabled}
            <tr>
              <th width="50%">Следующий блок сети</th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (Current: <a href="{$GLOBAL.website.blockexplorer.url}{$CURRENTBLOCKHASH}" target="_new">{$CURRENTBLOCK|number_format})</a></td>
            </tr>
            {else}
            <tr>
              <th>Следующий блок сети</th>
              <td colspan="3">{($CURRENTBLOCK + 1)|number_format} &nbsp;&nbsp; (Current: {$CURRENTBLOCK|number_format})</td>
            </tr>
            {/if}
            <tr>
              <th>Последний найденный блок</th>
              <td colspan="3"><a href="{$smarty.server.SCRIPT_NAME}?page=statistics&action=round&height={$LASTBLOCK}" target="_new">{$LASTBLOCK|default:"0"|number_format}</a></td>
            </tr>
            <tr>
              <th>Прошло после последнего блока</th>
              <td colspan="3">{$TIMESINCELAST|seconds_to_words}</td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="panel-footer">
      
      </div>
    </div>
  </div>
