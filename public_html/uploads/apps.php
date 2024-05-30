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
$arr= [];
$arr= $mssql->table("Все_Заявления")->get()->getResults();
/*
$result=[
];
*/

echo "<pre>";
foreach($arr as $rec){
    $sql= [
        "appID"=> $rec->{gf("Код_Заявления")},
        "appDate"=> $rec->{gf('Дата_Подачи')}->format('Y-m-d H:i:s'),
        "uID"=> $rec->{gf("ID")},
    ];
    $sql= mb_convert_encoding($sql,"utf8","cp1251");
    $mysql->table("2report")->insert($sql);
}
echo "</pre>";
