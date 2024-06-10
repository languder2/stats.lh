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

$res= $mssql->table("АбитДисциплины")->get()->getResults();
foreach ($res as $rec)
    $disciplines[$rec->{gf("Код")}]= $rec->{gf("Дисциплина")};

$res= $mssql->table("Вид_Испытания")->get()->getResults();
foreach ($res as $rec)
    $trailsType[$rec->{gf("Код")}]= $rec->{gf("Название")};

$arr= [];
$arr= $mssql->table("Все_Оценки")->where("ID IN (".implode(",",$uids).")")->get()->getResults();
//$arr= $mssql->table("Все_Оценки")->where(["Код_Заявления"=>336])->get()->getResults();
$trailsList= [];
foreach($arr as $rec){
    $appID= $rec->{gf("Код_Заявления")};
    $sql= [
        "discipline"=>empty($rec->{gf("Код_Дисциплины")})?"":$disciplines[$rec->{gf("Код_Дисциплины")}],
        "score"=>$rec->{gf("Оценка")},
        "date"=>empty($rec->{gf("Дата_Экзамена")})?"":$rec->{gf("Дата_Экзамена")}->format('Y-m-d H:i:s'),
        "type"=>empty($rec->{gf("Код_Испытания")})?"":$trailsType[$rec->{gf("Код_Испытания")}],
    ];
    $sql= mb_convert_encoding($sql,"utf8","cp1251");
    $trailsList[$appID][]= $sql;
    $mysql->table("2report")->where(["appID"=>$appID])->update(["trials"=>json_encode($trailsList[$appID])]);
}
echo "</pre>";
echo gf("
Этап 4: Обновление данных об испытаниях. Завершен.<br>
<a href='trials.php'>Этап 4: Обновление данных об испытаниях.</a>
<hr>
<a href='apps.php'>Этап 1: начать сначала.</a>

");

