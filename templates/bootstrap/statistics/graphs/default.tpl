<script>
$(function () {
  var hashChart = Morris.Line({
    element: 'hashrate-area-chart',
    data: {$YOURMININGSTATS},
    xkey: 'time',
    ykeys: ['hashrate'],
    labels: ['Hashrate'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });

  var workersChart = Morris.Line({
    element: 'workers-area-chart',
    data: {$YOURMININGSTATS},
    xkey: 'time',
    ykeys: ['workers'],
    labels: ['Workers'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });

  var shareCharts= Morris.Line({
    element: 'sharerate-area-chart',
    data: {$YOURMININGSTATS},
    xkey: 'time',
    ykeys: ['sharerate'],
    labels: ['Sharerate'],
    pointSize: 1,
    hideHover: 'auto',
    resize: true,
    fillOpacity: 1.00,
    lineColors: ['#24A665'],
    pointFillColors: ['#24A665'],
    pointStrokeColors: ['#24A665']
  });
});
</script>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-signal fa-fw"></i> <span class="graphsa1">Average Hashrate past 24h</span>
      </div>
      <div class="panel-body">
        <div id="hashrate-area-chart"></div>
      </div>
      <div class="panel-footer">
        <span class="graphsa2">Your average hashrate per hour.</span>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-signal fa-fw"></i> <span class="graphsa3">Average Workers past 24h</span>
      </div>
      <div class="panel-body">
        <div id="workers-area-chart"></div>
      </div>
      <div class="panel-footer">
        <span class="graphsa4">Your average active workers per hour.</span>
      </div>
    </div>
  </div>
</div>

<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <i class="fa fa-signal fa-fw"></i> <span class="graphsa5">Average Sharerate past 24h</span>
      </div>
      <div class="panel-body">
        <div id="sharerate-area-chart"></div>
      </div>
      <div class="panel-footer">
        <span class="graphsa6">Your share rate per hour.</span>
      </div>
    </div>
  </div>
</div>
