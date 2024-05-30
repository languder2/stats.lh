<?php
namespace src;
header('Content-type: text/html; charset=cp1251');
require_once "src/config.php";
require_once "src/mssql.php";
require_once "src/mysql.php";
require_once "src/updates.php";

echo 123;
die();
echo "<pre>";
$config= new config();
$mysql= new mysql($config->mysql);
$mysql->table("applications")->get();
$mysql->getResults();
print_r($mysql->results);