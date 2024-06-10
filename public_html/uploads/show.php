<?php
namespace src;

header('Content-type: text/html; charset=cp1251');
require_once "../src/config.php";
require_once "../src/mssql.php";
require_once "../src/mysql.php";
require_once "../src/updates.php";

$config= new config();
$mssql= new mssql($config->mssql);
$mysql= new mysql($config->mysql);
$mysql->table("2report")->truncate();

function getTables(){
    $file= file_get_contents("../backup/AT.sql");
    preg_match_all('/Object:  Table(.*?)Script Date:/s', $file, $matches);
    $values = $matches[1];
    foreach ($values as $key=>$value) $values[$key]= trim($value);
    return $values;
}

$tables= getTables();
echo "<pre>";
$num= $_GET['num']??0;
echo "<a href='?num=".($num+1)."'>next</a>";
echo "<hr>";
print_r($tables[$num]);
echo "<hr>";
$res= $mssql->table2($tables[$num])->get();
echo $res->numRows();
echo "<hr>";
print_r($res->getResults());
echo "</pre>";
