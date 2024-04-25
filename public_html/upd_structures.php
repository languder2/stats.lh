<?php
namespace src;
header('Content-type: text/html; charset=cp1251');
require_once "src/config.php";
require_once "src/mssql.php";
require_once "src/mysql.php";
require_once "src/updates.php";

echo "<pre>";


$mssql= new mssql($config->mssql);

$updates= new updates($config);
echo $updates->structures();

die();



$table= "Специальности";
$mssql->table($table)->where(["Код"=>259])->get();
print_r($mssql->getResults());
die();


$q= $mysql->table("faculties")->get();
//259


DIE();


$mssql->table("Специальности")->select(["Код","Название","ОО","ЦН","СН","Всего","ФормаОбучения","Квалификация","Уровень"])->get();
//$mssql->table("Все_Заявления")->where(["ID"=>6838])->select("Код_Заявления,Статус,Основания,УслОбучения,Зачислен,Приоритет,ЗабралДок,ОтказалсяОтЗачисления,Проходит,СогласенНаЗачисление")->get();
$mssql->table("Все_Заявления")->where(["ID"=>6838])->select("Код_Специальности")->order("Код_Специальности")->get();
print_r($mssql->getResults());
$mssql->table("Специальности")->select(["Код","ОКСО","Код_Факультета","Название","ГодНабора","ОО","ЦН","СН","Всего","ФормаОбучения","Квалификация","Уровень","Прием"])->where(["Прием"=>1])->order("Код")->get();
print_r($mssql->getResults());



