          <div class="col-md-spark-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-male fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5 up-more"><span class="dasha7">My Hashrate</span></p>
                  <div class="circle-tile-number text-faded up">
                    <span class="overview" id="b-hashrate">{$GLOBAL.userdata.hashrate|number_format:"2"}</span>
                    <span class="overview-mhs"> {$GLOBAL.hashunits.personal}</span>
                    <br>
                    <span class="personal-hashrate-bar spark-18"></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-spark-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-users fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5 up-more"><span class="dasha8">Pool Hashrate</span></p>
                  <div class="circle-tile-number text-faded up">
                    <span class="overview" id="b-poolhashrate">{$GLOBAL.hashrate|number_format:"2"}</span>
                    <span class="overview-mhs"> {$GLOBAL.hashunits.pool}</span>
                    <br>
                    <span class="pool-hashrate-bar spark-18"></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-spark-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
                <i class="fa fa-share-square fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5 up-more"><span class="dasha9">My Sharerate</span></p>
                  <div class="circle-tile-number text-faded up">
                    <span class="overview" id="b-sharerate">{$GLOBAL.userdata.sharerate|number_format:"2"}</span>
                    <span class="overview-mhs"> S/s</span>
                    <br>
                    <span class="personal-sharerate-bar spark-18"></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-spark-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
               <i class="fa fa-truck fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5 up-more"><span class="dashb1">Pool Workers</span></p>
                  <div class="circle-tile-number text-faded up">
                    <span class="overview" id="b-poolworkers">{$GLOBAL.workers}</span>
                    <br>
                    <span class="pool-workers-bar spark-18"></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-spark-2 col-sm-6">
            <div class="circle-tile fade">
              <div class="circle-tile-heading lightblue">
               <i class="fa fa-h-square fa-fw fa-2x"></i>
              </div>
              <div class="circle-tile-content lightblue">
                <div class="circle-tile-description text-faded">
                  <p class="h5 up-more"><span class="dashb2">Net Hashrate</span></p>
                  <div class="circle-tile-number text-faded up">
                    <span class="overview" id="b-nethashrate">{if $GLOBAL.nethashrate > 0}{$GLOBAL.nethashrate|number_format:"2"}{else}n/a{/if}</span>
                    <span class="overview-mhs"> {$GLOBAL.hashunits.network}</span>
                    <br>
                    <span class="pool-nethashrate-bar spark-18"></span>
                  </div>
                </div>
              </div>
            </div>
          </div>
