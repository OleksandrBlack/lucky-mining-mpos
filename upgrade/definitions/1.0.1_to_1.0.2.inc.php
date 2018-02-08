<?php
function run_102() {
  // Ugly but haven't found a better way
  global $setting, $config, $blocks, $shares, $shares_archive, $statistics_shares, $statistics_users, $mysqli;

  // Version information
  $db_version_old = '1.0.1';  // What version do we expect
  $db_version_new = '1.0.2';  // What is the new version we wish to upgrade to
  $db_version_now = $setting->getValue('DB_VERSION');  // Our actual version installed

  // Upgrade specific variables
  $aSql[] = "ALTER TABLE `blocks` CHANGE `shares` `shares` DECIMAL(34,4)";
  $aSql[] = "ALTER TABLE `shares` CHANGE `difficulty` `difficulty` DECIMAL(34,4) DEFAULT 0.0000";
  $aSql[] = "ALTER TABLE `shares_archive` CHANGE `difficulty` `difficulty` DECIMAL(34,4) DEFAULT 0.0000";
  $aSql[] = "ALTER TABLE `statistics_shares` CHANGE `valid` `valid` DECIMAL(34,4) DEFAULT 0.0000";
  $aSql[] = "ALTER TABLE `statistics_shares` CHANGE `invalid` `invalid` DECIMAL(34,4) DEFAULT 0.0000";
  $aSql[] = "ALTER TABLE `statistics_shares` CHANGE `pplns_valid` `pplns_valid` DECIMAL(34,4) DEFAULT 0.0000";
  $aSql[] = "ALTER TABLE `statistics_shares` CHANGE `pplns_invalid` `pplns_invalid` DECIMAL(34,4) DEFAULT 0.0000";
  $aSql[] = "ALTER TABLE `statistics_users` CHANGE `hashrate` `hashrate` DECIMAL(24,4)";
  $aSql[] = "ALTER TABLE `statistics_users` CHANGE `sharerate` `sharerate` DECIMAL(14,4)";
  $aSql[] = "UPDATE " . $setting->getTableName() . "    SET value = '1.0.2' WHERE name = 'DB_VERSION'";

  if ($db_version_now == $db_version_old && version_compare($db_version_now, DB_VERSION, '<')) {
    // Run the upgrade
    echo '- Starting database migration to version ' . $db_version_new . PHP_EOL;
    foreach ($aSql as $sql) {
      echo '-  Preparing: ' . $sql . PHP_EOL;
      $stmt = $mysqli->prepare($sql);
      if ($stmt && $stmt->execute()) {
        echo '-    success' . PHP_EOL;
      } else {
        echo '-    failed: ' . $mysqli->error . PHP_EOL;
        exit(1);
      }
    }
  }
}
?>