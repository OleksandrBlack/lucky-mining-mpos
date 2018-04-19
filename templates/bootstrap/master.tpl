<!doctype html>
<html lang="en">
<head>
  <script id="chatBroEmbedCode" src="https://lucky-mining.com.ua/js/chat.js" defer></script>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>{$GLOBAL.website.title} - {$smarty.request.page|escape|default:"home"|capitalize}</title>
  
  <!--[if lt IE 9]>
  <link rel="stylesheet" href="{$PATH}/css/ie.css" type="text/css" media="screen" />
  <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
  <![endif]-->

  <!--[if IE]><script type="text/javascript" src="{$PATH}/js/excanvas.js"></script><![endif]-->
  {if $GLOBAL.statistics.analytics.enabled}
  {$GLOBAL.statistics.analytics.code nofilter}
  {/if}
  <link href="{$PATH}/css/bootstrap.min.css" rel="stylesheet">
  <link href="{$PATH}/css/bootstrap-switch.min.css" rel="stylesheet">
  <link href="{$PATH}/font-awesome/css/font-awesome.min.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/morris/morris-0.5.1.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/timeline/timeline.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/dataTables/dataTables.bootstrap.css" rel="stylesheet">
  <link href="{$PATH}/css/mpos.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/metisMenu/metisMenu.css" rel="stylesheet">
  <link href="{$PATH}/css/sparklines.css" rel="stylesheet">
  <link href="{$PATH}/css/plugins/toastr.css" rel="stylesheet">
  {if $GLOBAL.config.website_design|default:"default" != "default"}
  <link href="{$PATH}/css/design/{$GLOBAL.config.website_design}.css" rel="stylesheet">
  {/if}
  
  <script src="{$PATH}/js/jquery.min.js"></script>
  <script src="{$PATH}/js/jquery.cookie.js"></script>
  <script src="{$PATH}/js/jquery.md5.js"></script>
  <script src="{$PATH}/js/bootstrap.min.js"></script>
  <script src="{$PATH}/js/bootstrap-switch.min.js"></script>
  <script src="{$PATH}/js/plugins/dataTables/jquery.dataTables.js"></script>
  <script src="{$PATH}/js/plugins/dataTables/dataTables.bootstrap.js"></script>
  <script src="{$PATH}/js/plugins/metisMenu/jquery.metisMenu.js"></script>
  <script src="{$PATH}/js/plugins/raphael-2.1.2.min.js"></script>
  <script src="{$PATH}/js/plugins/morris/morris-0.5.1.min.js"></script>
  <script src="{$PATH}/js/plugins/sparkline/jquery.sparkline.min.js"></script>
  <script src="{$PATH}/js/mpos.js"></script>
  <script src="{$PATH}/js/translations.js"></script>
  <script src="{$PATH}/js/plugins/toastr.min.js"></script>
  <?php header('Access-Control-Allow-Origin: *'); ?>

</head>

<body>

  <div id="wrapper">
    {include file="global/header.tpl"}
    {include file="global/navigation.tpl"}

    <div id="page-wrapper"><br />
<div class="row">
  <div class="col-lg-12">
    <div class="panel panel-info">
      <div class="panel-heading">
        <h4 class="panel-title"><center><i class="fa fa fa-question fa-fw"></i> <lng class="geta1">Get Started</lng> - <a href="{$smarty.server.SCRIPT_NAME}?page=gettingstarted"><lng class="geta2">Learn More</lng></a></center></h4>
      	  <BR>
		<center>
{nocache}
		<span class="statsnetrate">Network hashrate</span>: <b>{$GLOBAL.nethashrate|number_format:"3"}</b> {$GLOBAL.hashunits.network}<BR>
		<span class="statspoolrate">Pool hashrate</span>: <span id="b-hashrate"><b>{$GLOBAL.hashrate|number_format:"3"}</b></span> {$GLOBAL.hashunits.pool}<BR>
		<span class="statsworkers">Current Active Workers</span>: <b>{$GLOBAL.workers|number_format}</b><BR>
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
{/nocache}
		</center>
	  </div>
	  </div>
	  </div>
	  </div>
    {nocache}
    {if is_array($smarty.session.POPUP|default)}
      {section popup $smarty.session.POPUP}
      <div class="{if $smarty.session.POPUP[popup].DISMISS|default:"" == "yes"}alert-dismissable {/if} {$smarty.session.POPUP[popup].TYPE|default:"alert alert-info"} {if $smarty.session.POPUP[popup].ID|default:"static" == "static" AND $GLOBAL.website.notificationshide == 1}autohide{/if}" id="{$smarty.session.POPUP[popup].ID|default:"static"}">
        {if $smarty.session.POPUP[popup].DISMISS|default:"no" == "yes"}
        <button id="{$smarty.session.POPUP[popup].ID|default:"static"}" type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
        {/if}
        {if $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-info"}
        <span class="glyphicon glyphicon-info-sign">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-warning"}
        <span class="glyphicon glyphicon-info-sign">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-danger"}
        <span class="glyphicon glyphicon-remove-circle">&nbsp;</span>
        {elseif $smarty.session.POPUP[popup].TYPE|default:"alert alert-info" == "alert alert-success"}
        <span class="glyphicon glyphicon-ok-circle">&nbsp;</span>
        {/if}
        {$smarty.session.POPUP[popup].CONTENT nofilter}
      </div>

      {/section}
    {/if}

    {/nocache}
    {if $CONTENT != "empty" && $CONTENT != ""}
      {if file_exists($smarty.current_dir|cat:"/$PAGE/$ACTION/$CONTENT")}
        {include file="$PAGE/$ACTION/$CONTENT"}
      {else}
        Missing template for this page
      {/if}
    {/if}

    </div>

    {include file="global/footer.tpl"}

  </body>
  </html>
