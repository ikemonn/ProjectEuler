<?php
date_default_timezone_set('Asia/Tokyo');
$year = 2014;
$month = 2;
$dates = array();
$last_day = date('t', mktime(0, 0, 0, $month, 1, $year));

for ($i = 1; $i <= $last_day; $i++) {
     $weeks = array('日','月','火','水','木','金','土');
     $week_num = date('w', mktime (0, 0, 0, $month, $i, $year));
     $dates[$i]['day'] = $weeks[$week_num];
}
 print_r($dates);
