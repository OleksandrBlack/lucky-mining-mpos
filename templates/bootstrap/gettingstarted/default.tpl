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

	        <li><em><span class="getb3">GPU Miner EWBF NVIDIA:</span></em> <b>Wondows</b> <a href="https://mega.nz/#F!usQh2bTa!3qp_PaiO-dw3F0mpvLXynA" target="_blank"><span class="getb4">Download Here</span></a><b> | Linux </b><a href="https://mega.nz/#F!aop0BLaR!qQUGG6C2ZhE2zAC0XAlMSw" target="_blank"><span class="getb4">Download Here</span></a></li>
        <li><em><span class="getb5">GPU Miner Claymore AMD:</span></em> <b>Wondows</b><b> | Linux</b> <a href="https://mega.nz/#F!P0ZjFDjC!Cmb-ZRqlbAnNrajRtp4zvA" target="_blank"><span class="getb6">Download Here</span></a></li>
      </ul>
    </li>
    <p>3. <strong><span class="getb7">Configure your miner. (for Windows)</span></strong></p>
    <ul>
	<li><span class="getb8">Port and its difficulty</span></li>
<pre>--port <b>4445</b><em> - </em><em><span class="getb9">Automatic difficulty setting</span></em>
--port <b>4446</b><em> - </em><em><span class="getc1">varDiff : 0.5</span></em></pre>
      
      <li><span class="getc2">GPU Miner EWBF NVIDIA</span></li>
      <pre>miner{if $GLOBAL.config.algorithm == 'equihash'}{/if} --server {$SITESTRATUMURL|default:$smarty.server.SERVER_NAME} --port <b>4445</b> --user <em><span class="getc3">Weblogin</span></em>.<em><span class="getc4">WorkerName</span></em> --pass <em>x</em></pre>
      <li><span class="getc5">GPU Miner Claymore AMD</span></li>
      <pre>GPU_FORCE_64BIT_PTR 1
GPU_MAX_HEAP_SIZE 100
GPU_USE_SYNC_OBJECTS 1
GPU_MAX_ALLOC_PERCENT 100
GPU_SINGLE_ALLOC_PERCENT 100
ZecMiner64.exe -zpool {if $GLOBAL.config.algorithm == 'equihash'}{/if}{$SITESTRATUMURL|default:$smarty.server.SERVER_NAME}:<b>4445</b> -zwal <em><span class="getc6">Weblogin</span></em>.<em><span class="getc7">WorkerName</span></em> -zpsw <em>x</em> -allpools 1</pre>
	  <br />
    </ul>
    <p>4. <strong><span class="getc8">Create a</span> {$SITECOINNAME|default:"HUSH"} <span class="getc9">address to receive payments.</span></strong></p>
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