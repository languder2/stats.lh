<?php
namespace src;

header('Content-type: text/html; charset=cp1251');
require_once "../src/config.php";
require_once "../src/mssql.php";
require_once "../src/mysql.php";
require_once "../src/updates.php";
echo "<pre>";
$config= new config();
$mssql= new mssql($config->mssql);
$mysql= new mysql($config->mysql);
$uids= $mysql->table("2report")->getUnique("uID");


$arr= [];
$arr= $mssql->table("Семья")->where("IDa IN (".implode(",",$uids).")")->get()->getResults();
$familyList= [];
foreach($arr as $rec){
    $uid= $rec->{gf("IDa")};
    $sql= [
        "fType"=> $rec->{gf("Родство")},
        "fFIO"=> $rec->{gf("ФИО")},
        "fPhone"=> $rec->{gf("Телефон")},
        "fDoc"=> $rec->{gf("ПаспортТип")},
    ];
    $sql= mb_convert_encoding($sql,"utf8","cp1251");
    $familyList[$uid][]=$sql;
    $mysql->table("2report")->where(["uID"=>$uid])->update(["family"=>json_encode($familyList[$uid])]);
}
echo "</pre>";
echo gf("
Этап 3: Обновление данных об семье. Завершен.<br>
<a href='trials.php'>Этап 4: Обновление данных об испытаниях.</a>
<hr>
<a href='apps.php'>Этап 1: начать сначала.</a>

");

