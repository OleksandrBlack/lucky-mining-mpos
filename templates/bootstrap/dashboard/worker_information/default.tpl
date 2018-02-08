{if !$DISABLED_DASHBOARD and !$DISABLED_DASHBOARD_API}
  <div class="col-lg-4">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><i class="fa fa-desktop fa-fw"></i> <span class="dashe8">Worker Information</span></h4>
      </div>
      <div class="panel-body no-padding table-responsive">
        <table class="table table-bordered table-hover table-striped"> 
         <thead>
          <tr>
            <th><span class="dashe9">Worker</span></th>
            <th>{$GLOBAL.hashunits.personal}</th>
            <th><span class="dashf2">Difficulty</span></th>
          </tr>
          </thead>
          <tbody id="b-workers">
            <td colspan="3" class="text-center"><span class="dashf3">No worker information available</span></td>
          </tbody>
        </table>
      </div>
    </div>
  </div>
{/if}
