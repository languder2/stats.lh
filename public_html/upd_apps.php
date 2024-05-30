<?php
namespace src;
header('Content-type: text/html; charset=cp1251');
require_once "src/config.php";
require_once "src/mssql.php";
require_once "src/mysql.php";
require_once "src/updates.php";

echo "<pre>";

$config= new config();
$updates= new updates($config);
$updates->applications();
//$mssql= new mssql($config->mssql);
