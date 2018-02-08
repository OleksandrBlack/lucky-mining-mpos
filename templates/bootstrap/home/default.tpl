{if $GLOBAL.website.newsstyle|default:"0" == 0}
  {include file="home/news_all.tpl"}
{else}
  {include file="home/news_accordion.tpl"}
{/if}
				 {include file="gettingstarted/default.tpl"}
<script>
	document.domain = "lucky-mining.com.ua"
</script>
