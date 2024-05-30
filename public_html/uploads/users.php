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
$arr= $mssql->table("Все_Абитуриенты")->where("ID IN (".implode(",",$uids).")")->get()->getResults();

foreach($arr as $rec){
    $sql= [
        "surname"=> $rec->{gf("Фамилия")},
        "name"=> $rec->{gf("Имя")},
        "patronymic"=> $rec->{gf("Отчество")},
        "birthday"=> $rec->{gf("Дата_Рождения")}->format('Y-m-d H:i:s'),
        "snils"=> $rec->{gf("СНИЛС")},
        "sex"=> $rec->{gf("Пол")},
        "benefits"=> $rec->{gf("Льготы")},
        "email"=> $rec->{gf("E_Mail")},
        "citizenship"=> $rec->{gf("Гражданство")},
    ];
    print_r($sql);
    print_r($rec);
    $sql= mb_convert_encoding($sql,"utf8","cp1251");
//    $mysql->table("2report")->where(["uID"=>$rec->ID])->update($sql);
}
echo "</pre>";
