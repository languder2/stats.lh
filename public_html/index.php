<?php
namespace src;
header('Content-type: text/html; charset=cp1251');
require_once "src/config.php";
require_once "src/mssql.php";
require_once "src/mysql.php";
require_once "src/updates.php";

echo "<pre>";
$config= new config();
print_r($config->mssql);
print_r($config);
die();

$mssql= new mssql($config->mssql);

$table= "Статус_Студента";
$mssql->table($table)->where()->get();
print_r($mssql->getResults());
die();
