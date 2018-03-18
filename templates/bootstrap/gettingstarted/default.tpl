 <div class="row">
    <div class="col-lg-12">
      <div class="panel panel-info">
        <div class="panel-heading">
          <i class="fa fa-question fa-fw"></i> <span class="geta3">Getting Started Guide</span>
        </div>
        <div class="panel-body">
        
    <p>1. <strong><span class="geta4">Create account.</span></strong></p>
      <ul>
        <li><span class="geta5">Register</span> <a href="{$smarty.server.SCRIPT_NAME}?page=register"><span class="geta6">here</span></a><span class="geta7">, or login if you already have account</span></li>
        <li><span class="geta8">Create a</span> <a href="{$smarty.server.SCRIPT_NAME}?page=account&action=workers"><span class="geta9">worker</span></a> <span class="getb1">that will be used by the miner to login</span></li>
      </ul>
    </li>
       <p>2. <strong><span class="getb2">Download a miner.</span></strong></p>
      <ul>
		<li><em>CPU <span class="miner">Miner</span> Nheqminer:</em> <b>Windows</b><b> | Linux</b> <a href="https://github.com/nicehash/nheqminer/releases" target="_blank"><span class="getb6">Download Here</span></a></li>
        <li><em>GPU <span class="miner">Miner</span> Claymore AMD (<b style="color:#32CD32"><span class="ssl_support">ssl support</span></b>):</em> <b>Windows</b><b> | Linux</b> <a href="https://mega.nz/#F!P0ZjFDjC!Cmb-ZRqlbAnNrajRtp4zvA" target="_blank"><span class="getb6">Download Here</span></a></li>
		<li><em>GPU <span class="miner">Miner</span> EWBF NVIDIA:</em> <b>Windows</b> <a href="https://mega.nz/#F!usQh2bTa!3qp_PaiO-dw3F0mpvLXynA" target="_blank"><span class="getb4">Download Here</span></a><b> | Linux </b><a href="https://mega.nz/#F!aop0BLaR!qQUGG6C2ZhE2zAC0XAlMSw" target="_blank"><span class="getb4">Download Here</span></a></li>
		<li><em>GPU <span class="miner">Miner</span> Dstm-Zcash NVIDIA (<b style="color:#32CD32"><span class="ssl_support">ssl support</span></b>):</em> <b>Windows</b> <a href="https://mega.nz/#!1kRxQRSD!I3ryiEI5eT7datW842QNESyBQpZY6PILYS4HNIEHpYY" target="_blank"><span class="getb4">Download Here</span></a><b> | Linux </b><a href="https://mega.nz/#!14IS2AbI!Zl9z9ZrWoNRGPQ59Fog15f4tIdPcT40u3fOMkVavHlo" target="_blank"><span class="getb4">Download Here</span></a></li>
		<li><em>GPU <span class="miner">Miner</span> Bminer NVIDIA (<b style="color:#32CD32"><span class="ssl_support">ssl support</span></b>):</em> <b>Windows</b> <a href="https://www.bminercontent.com/releases/bminer-v5.5.0-aba7617-amd64.zip" target="_blank"><span class="getb4">Download Here</span></a><b> | Linux </b><a href="https://www.bminercontent.com/releases/bminer-v5.5.0-aba7617-amd64.tar.xz" target="_blank"><span class="getb4">Download Here</span></a></li>
	  </ul>
    </li>
    <p><strong><span class="windows">For Windows</span></strong></p>
    <p>3. <strong><span class="sel_port">Select Port</span></strong></p>
    <ul>
	
	<li><span class="cpu_ports">CPU Ports</span></li>
	<pre>
--port <b>PORT_1</b><em> - </em><em><b>CPU</b></em></pre>
	<li><span class="ssl_ports">SSL Ports</span></li>
	<pre>
--port <b>PORT_2</b><em> - </em><em>(diff=0.5) <b>1 GPU</b> (<b style="color:#32CD32">SSL</b>)</em>
--port <b>PORT_3</b><em> - </em><em>(diff=1) <b>4 < GPU</b> (<b style="color:#32CD32">SSL</b>)</em>
--port <b>PORT_4</b><em> - </em><em><span class="getb9">(Recommended)</span> <b>4-8 GPU</b> (<b style="color:#32CD32">SSL</b>)</em>
--port <b>PORT_5</b><em> - </em><em><span class="auto_dif">(Automatic difficulty setting)</span> <b>8 > GPU</b> (<b style="color:#32CD32">SSL</b>)</em></pre>
	<li><span class="std_ports">Standard Ports</span></li>
	<pre>
--port <b>PORT_8</b><em> - </em><em>(diff=0.5) <b>1 GPU</b></em>
--port <b>PORT_6</b><em> - </em><em>(diff=1) <b>4 < GPU</b></em>
--port <b>PORT_7</b><em> - </em><em><span class="getb9">(Recommended)</span> <b>4-8 GPU</b></em>
--port <b>PORT_9</b><em> - </em><em><span class="auto_dif">(Automatic difficulty setting)</span> <b>8 > GPU</b></em></pre>
	<li><span class="nice_ports">Nicehash Ports</span></li>
	<pre>
--port <b>PORT_10</b><em> - </em><em><b>nicehash support</b></em></pre>
</ul>
<br>
    <p>4. <strong><span class="conf_miner">Configure Miner</span></strong></p>
<ul>	
	<li><b>CPU <span class="miner">Miner</span> Nheqminer</b></li>
	<pre>
nheqminer.exe{if $GLOBAL.config.algorithm == 'equihash'}{/if} -l {$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:<b>PORT_1</b> -u <em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em> -p <em>x</em> -t <em><span class="cpu_threads">cpu_threads</span></em></pre>
<br>
	<li><b>GPU <span class="miner">Miner</span> Claymore AMD</b></li>
	<pre>
GPU_FORCE_64BIT_PTR 1
GPU_MAX_HEAP_SIZE 100
GPU_USE_SYNC_OBJECTS 1
GPU_MAX_ALLOC_PERCENT 100
GPU_SINGLE_ALLOC_PERCENT 100
ZecMiner64.exe -zpool {if $GLOBAL.config.algorithm == 'equihash'}{/if}{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:<b>PORT_7</b> -zwal <em><span class="getc6">Weblogin</span></em>.<em><span class="getc7">WorkerName</span></em> -zpsw <em>x</em> -allpools 1</pre>
	<pre>
ZecMiner64.exe -zpool <b style="color:#32CD32">ssl://</b>{if $GLOBAL.config.algorithm == 'equihash'}{/if}{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:<b>PORT_4</b> -zwal <em><span class="getc6">Weblogin</span></em>.<em><span class="getc7">WorkerName</span></em> -zpsw <em>x</em> -allpools 1</pre>
<br>
	<li><b>GPU <span class="miner">Miner</span> EWBF NVIDIA</b></li>
	<pre>
miner.exe{if $GLOBAL.config.algorithm == 'equihash'}{/if} --server {$SITESTRATUMURL|default:$smarty.server.SERVER_NAME} --port <b>PORT_7</b> --user <em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em> --pass <em>x</em></pre>
<br>
	<li><b>GPU <span class="miner">Miner</span> Dstm-Zcash NVIDIA</b></li>
	<pre>
zm.exe{if $GLOBAL.config.algorithm == 'equihash'}{/if} --server {$SITESTRATUMURL|default:$smarty.server.SERVER_NAME} --port <b>PORT_7</b> --user <em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em> --pass <em>x</em></pre>
<pre>
zm.exe{if $GLOBAL.config.algorithm == 'equihash'}{/if} --server <b style="color:#32CD32">ssl://</b>{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME} --port <b>PORT_4</b> --user <em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em> --pass <em>x</em></pre>
<br>
	<li><b>GPU <span class="miner">Miner</span> Bminer NVIDIA</b></li>
	<pre>
bminer.exe{if $GLOBAL.config.algorithm == 'equihash'}{/if} -uri stratum://<em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em>:<b>x</b>@{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:<b>PORT_7</b></pre>
<pre>
bminer.exe{if $GLOBAL.config.algorithm == 'equihash'}{/if} -uri <b style="color:#32CD32">stratum+ssl://</b><em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em>:<b>x</b>@{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:<b>PORT_4</b></pre> 
<br>
    </ul>
    <p>5. <strong><span class="getc8">Create a</span> {$SITECOINNAME|default:"HUSH"} <span class="getc9">address to receive payments.</span></strong></p>
      <ul>
        <li> <span class="getd1">Downloading the client</span> &amp; <span class="getd2">block chain: 	Download the</span> {$SITECOINNAME|default:"HUSH"} <a href="{$SITECOINURL|default:"https://zcash.dl.mercerweiss.com/hush-1.0.12.msi"}" target="_blank"><span class="getd3">here</span></a>.
		<br><span class="getd4">or</span></br>
		<li> <span class="getd5">Register on the exchange</span> <a href="https://github.com/KomodoPlatform/BarterDEX/releases" target="_blank">BarterDEX</a>, <a href="https://www.cryptopia.co.nz/Exchange/?market=HUSH_BTC" target="_blank">Cryptopia</a> , <a href="https://tradesatoshi.com/Exchange?market=HUSH_BTC" target="_blank">TradeSatoshi</a> .
          <p><span class="getd6">Generate a new address and input it on your account page to receive payments.</span></p>
        </li>
      </ul>
    </li>
    {if $GLOBAL.config.algorithm == 'scrypt'}
    <p>5. <strong>Advanced CGMiner settings / FAQ</strong></p>
      <ul>
        <li><a href="https://raw.github.com/ckolivas/cgminer/v3.7.2/SCRYPT-README" target="_blank">Scrypt readme</a></li>
        <li>Don't set <b>intensity</b> too high, I=11 is standard and safest. Higher intensity takes more GPU RAM. Check for <b>hardware errors</b> in CGMiner (HW). HW=0 is good, otherwise lower intensity.</li>
        <li>Set shaders according to the readme (or look at your graphic cards specifications). CGMiner uses this value at first run to calculate <b>thread-concurrency</b>. Easiest way to get this optimized is to use same settings as others have used here: <a href="http://HUSH.info/Mining_Hardware_Comparison" target="_blank">here</a>.</li>
        <li>There's also an interesting project which gives you a GUI for CGMiner. Windows only it seems.</li>
        <li>Here's a great <a href="https://docs.google.com/document/d/1Gw7YPYgMgNNU42skibULbJJUx_suP_CpjSEdSi8_z9U/preview?sle=true" target="_blank">guide</a> how to get up and running with Xubuntu.</li>
      </ul>
    </li>
    {/if}
        </div>
      </div>
    </div>
    <!-- /.col-lg-12 -->
  </div>
