<?php
$defflip = (!cfip()) ? exit(header('HTTP/1.1 401 Unauthorized')) : 1;

/**
 * We extend our CoinBase class
 * No need to change anything, base class supports
 * scrypt and sha256d
 **/
class Coin extends CoinBase {
  // Our coins target bits
  protected $target_bits = 16;

  // Our coins share difficulty precision
  protected $share_difficulty_precision = 2;

  /**
   * Calculate the PPS value for this coin
   * WARNING: Get this wrong and you will over- or underpay your miners!
   **/
  public function calcPPSValue($pps_reward, $dDifficulty) {
    return ($pps_reward / $dDifficulty);
  }

  /**
   * Calculate our hashrate based on shares inserted to DB
   * We use diff1 share values, not a baseline one
   **/
  public function calcHashrate($shares, $interval) {
    return $shares * 8192 / $interval / 1000;
  }

  /**
   * Calculate estimated shares of this coin, this is using baseline
   * according to our configuration difficulty
   **/
  public function calcEstaimtedShares($dDifficulty) {
    return round($dDifficulty, $this->share_difficulty_precision);
  }

  /**
   * Calculate our networks expected time per block
   **/
  public function calcNetworkExpectedTimePerBlock($dDifficulty, $dNetworkHashrate) {
    if ($dNetworkHashrate > 0) {
      return 8192 * $dDifficulty / $dNetworkHashrate;
    } else {
      return 0;
    }
  }

  /**
   * Calculate next expected difficulty based on current difficulty
   **/
  public function calcExpectedNextDifficulty($dDifficulty, $dNetworkHashrate) {
    $iExpectedTimePerBlock = $this->calcNetworkExpectedTimePerBlock($dDifficulty, $dNetworkHashrate);
    if (!empty($iExpectedTimePerBlock) && $iExpectedTimePerBlock > 0) {
      return round($dDifficulty * sqrt($this->config['cointarget'] / 150));
    } else {
      return 0;
    }
  }

  /**
   * Calculate expected earings per day based on users hashrate and current difficulty
   **/
  public function calcEstDay($dDifficulty, $dHashrate) {
      return round( ( $dHashrate * 1000 ) / $iNetHashrate * ( $this->config['reward'] * ( 60 * 24 / 2.5 )), 4);
  }
}
