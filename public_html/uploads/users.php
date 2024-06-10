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

$res= $mssql->table("Статус_Студента")->get()->getResults();
foreach ($res as $rec)
    $uStatus[$rec->{gf("Код")}]= $rec->{gf("Статус")};

$res= $mssql->table("Льготы")->get()->getResults();
foreach ($res as $rec)
    $benefits[$rec->{gf("КодЛьгот")}]= $rec->{gf("Льготы")};

$docOriginalType= [
    1=>"Оригинал",
    2=>"Мотивационное заявление",
    3=>"ЕПГУ"
];
$typeNP= [
    1=>"Город федерального значения",
    2=>"Город",
    3=>"Населенный пункт городского типа",
    4=>"Населенный пункт сельского типа",
];
$langs= [
    13=>"Английский язык",
    14=>"Немецкий язык"
];
$res= $mssql->table("Пользователи")->get()->getResults();
foreach ($res as $rec)
    $operators[$rec->{gf("ID")}]= $rec->{gf("ФИО")};

$arr= [];
$arr= $mssql->table("Все_Абитуриенты")->where("ID IN (".implode(",",$uids).")")->get()->getResults();

foreach($arr as $rec){
    $sql= [
        "operator"=>empty($rec->{gf("КодПользователя")})?"":$operators[$rec->{gf("КодПользователя")}],
        "surname"=> $rec->{gf("Фамилия")},
        "name"=> $rec->{gf("Имя")},
        "patronymic"=> $rec->{gf("Отчество")},
        "birthday"=> $rec->{gf("Дата_Рождения")}->format('Y-m-d H:i:s'),
        "snils"=> $rec->{gf("СНИЛС")},
        "sex"=> $rec->{gf("Пол")},
        "email"=> $rec->{gf("E_Mail")},
        "citizenship"=> $rec->{gf("Гражданство")},
        "uStatus"=>$uStatus[$rec->{gf("Статус")}],
        "benefits"=>@$benefits[$rec->{gf("Льготы")}],
        "docType"=>$rec->{gf("Тип_Удостоверения")},
        "docSerial"=>$rec->{gf("ПаспортСерия")},
        "docNumber"=>$rec->{gf("ПаспортНомер")},
        "docWhoIssued "=>$rec->{gf("Кем_Выдан")},
        "docDateIssued "=>empty($rec->{gf("Дата_Выдачи")})?"":$rec->{gf("Дата_Выдачи")}->format('Y-m-d H:i:s'),
        "placeBirths"=>$rec->{gf("Место_Рождения")},
        "docOriginal"=>gf($rec->{gf("ОригиналДокумента")}?"y":"n"),
        "docOriginalType"=>!empty($rec->{gf("ОригиналКодВида")})?gf($docOriginalType[$rec->{gf("ОригиналКодВида")}]):" ",
        "address"=>
            $rec->{gf("Страна_ПП")}.", ".
            $rec->{gf("Регион_ПП")}.", ".
            $rec->{gf("Город_ПП")}.", ".
            $rec->{gf("Улица_ПП")}.", ".
            $rec->{gf("Дом_Кв_ПП")}.", ".
            $rec->{gf("Корпус_ПП")}.", ".
            $rec->{gf("Квартира_ПП")}.", ",
        "addressActual"=>
            $rec->{gf("Страна_Родители")}.", ".
            $rec->{gf("Регион_Родители")}.", ".
            $rec->{gf("Город_Родители")}.", ".
            $rec->{gf("Улица_Родители")}.", ".
            $rec->{gf("Дом_Кв_Родители")}.", ".
            $rec->{gf("Корпус_Родители")}.", ".
            $rec->{gf("Квартира_Родители")}.", ",
        "hostel"=>gf($rec->{gf("Общежитие")}?"y":"n"),
        "mobile"=>$rec->{gf("Мобильный")},
        "phone"=>$rec->{gf("Телефон_ПП")},
        "typeNP"=>empty($rec->{gf("ТипНП_ПП")})?"":gf($typeNP[$rec->{gf("ТипНП_ПП")}]),
        "edName"=>$rec->{gf("Уч_Заведение")},
        "edType"=>$rec->{gf("ТипОбразования")},
        "edCountry"=>$rec->{gf("Страна_УЗ")},
        "edRegion"=>$rec->{gf("Где_Находится_УЗ")},
        "edFinish"=>$rec->{gf("Год_Окончания_УЗ")},
        "edLang"=>empty($rec->{gf("Изучаемый_Язык")})?"":gf($langs[$rec->{gf("Изучаемый_Язык")}]),
        "edDocType"=>$rec->{gf("Тип_Образ_Документа")},
        "edDocSerial"=>$rec->{gf("Серия_Аттестата")},
        "edDocNumber"=>$rec->{gf("Номер_Аттестата")},
        "edDocDate"=>empty($rec->{gf("Дата_Выдачи_УД")})?"":$rec->{gf("Дата_Выдачи_УД")}->format('Y-m-d H:i:s'),
        "edScore"=>$rec->{gf("СрБаллАттестата")},
        "docBenefits"=>$rec->{gf("ДокументНаЛьготы")},
    ];
    $sql= mb_convert_encoding($sql,"utf8","cp1251");
    $mysql->table("2report")->where(["uID"=>$rec->ID])->update($sql);
}
echo "</pre>";
echo gf("
Этап 2: Обновление данных абитуриентов. Завершен.<br>
<a href='family.php'>Этап 3: Обновление данных об семье.</a>
<hr>
<a href='apps.php'>Этап 1: начать сначала.</a>

");

