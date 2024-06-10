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

echo "<pre>";

$appStatus[6]= "Принят";
$appStatus[7]= "Отклонено";
$appStatus[10]= "В обработке";

$methodSubmitting=[
    1=>"Лично",
    2=>"Личный кабинет",
    3=>"Почтой",
    4=>"ЕПГУ",
];
$res= $mssql->table("Тип_Обучения")->get()->getResults();
foreach ($res as $rec)
    $appEdType[$rec->{gf("Код")}]= $rec->{gf("Название")};

$res= $mssql->table("СпециальностиПрофили")->get()->getResults();
foreach ($res as $rec)
    $edProfiles[$rec->{gf("Код")}]= $rec->{gf("НаправлениеКод")};
$res= $mssql->table("ПриказыФИС")->get()->getResults();
foreach ($res as $rec)
    $orders[$rec->{gf("РегНомерПриказа")}]= empty($rec->{gf("ДатаПриказа")})?"":$rec->{gf("ДатаПриказа")}->format('Y-m-d H:i:s');

$arr= [];
//$arr= $mssql->table("Все_Заявления")->where(["ID"=>6890,"Удалена"=>0])->get()->getResults();
$arr= $mssql->table("Все_Заявления")->where(["Удалена"=>0])->get()->getResults();
foreach($arr as $rec){
    $sql= [
        "appID"=> $rec->{gf("Код_Заявления")},
        "appDate"=> $rec->{gf('Дата_Подачи')}->format('Y-m-d H:i:s'),
        "uID"=> $rec->{gf("ID")},
        "appStatus"=>gf($appStatus[$rec->{gf("Статус")}]),
        "appPriority"=> $rec->{gf("Приоритет")},
        "appBasis"=> $rec->{gf("Основания")},
        "numLD"=> $rec->{gf("НомерЛД")},
        "methodSubmitting"=> empty($rec->{gf("КодСпособаПодачи")})?"":gf($methodSubmitting[$rec->{gf("КодСпособаПодачи")}]),
        "approval"=> $rec->{gf("СогласенНаЗачисление")},
        "appEdForm"=>gf($methodSubmitting[$rec->{gf("КодФормы")}]),
        "appCourse"=> $rec->{gf("Курс")}??1,
        "profileCode"=>!empty($edProfiles[$rec->{gf("КодПрофиля")}])?gf(@$edProfiles[$rec->{gf("КодПрофиля")}]):"",
        "orderNum"=>$rec->{gf("Приказ")},
        "orderDate"=>empty($rec->{gf("Приказ")})?"":gf($orders[$rec->{gf("Приказ")}]),
    ];
    $sql= mb_convert_encoding($sql,"utf8","cp1251");
    $mysql->table("2report")->insert($sql);
}
echo "</pre>";
echo gf("Этап 1: Добавление заявок. Завершен.<br>
<a href='users.php'>Этап 2: Обновление данных абитуриентов.</a>");