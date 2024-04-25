<?php
header('Content-type: text/plain; charset=cp1251');

function getTables(){
    $file= file_get_contents("AT.sql");
    preg_match_all('/Object:  Table(.*?)Script Date:/s', $file, $matches);
    $values = $matches[1];
    foreach ($values as $key=>$value) $values[$key]= trim($value);
    return $values;
}
function OpenConnection()
{
    $database= "Абитуриенты";
    $user= "stat";
    $pass= "Qw3Rty!";
    //$pass= "";


    $serverName = "tcp:10.205.100.32,1433";
    $connectionOptions = array(
        "Database"=>$database,
        "Uid"=>$user,
        "PWD"=>$pass,
        'TrustServerCertificate' => 'true'
    );
    $conn = sqlsrv_connect($serverName, $connectionOptions);
    if($conn == false){

        $error= sqlsrv_errors();
        $message=  $error[0]['message'];
        echo $message;
        die();
    }
    return $conn;
}
function selectFrom($conn,$table,$where= false){

    $tsql= "SELECT * FROM $table";
    if(!empty($where))
        $tsql.= $where;
    if(($result = sqlsrv_query($conn,$tsql,[],["Scrollable" => SQLSRV_CURSOR_KEYSET ])) !== false){
        echo "$table: ".sqlsrv_num_rows($result)."\n";
        while( $obj = sqlsrv_fetch_object( $result )) {
            print_r($obj);

        }
    }
    else{
        $error= sqlsrv_errors();
        $message=  $error[0]['message'];
        echo $message;
        die();

    }
    $error= sqlsrv_errors();
    if(!empty($error)){
        $message=  $error[0]['message'];
        echo $message;
        die();
    }

}

$conn= OpenConnection();
$tables= getTables();
//selectFrom($conn,$tables[50]);
//selectFrom($conn,$tables[52]);
$where = " WHERE ID=6832";
//selectFrom($conn,$tables[50],$where);
//selectFrom($conn,$tables[52]);

//selectFrom($conn,$tables[42]);
//selectFrom($conn,$tables[43]);
//die(print_r($tables));

//$tsql= "SELECT [Сумма] FROM $tables[52]";
//$tsql= mb_convert_encoding($tsql, "utf8","cp1251");
//echo $tsql;

//echo "<br><br>";
$tsql= "SELECT * FROM $tables[52] ";
if(($result = sqlsrv_query($conn,$tsql,[],["Scrollable" => SQLSRV_CURSOR_KEYSET ])) !== false) {
    echo sqlsrv_num_rows($result)."\n";
    while ($obj = sqlsrv_fetch_object($result)) {
        print_r($obj);

    }
}
else{
    $error= sqlsrv_errors();
    $message=  $error[0]['message'];
    echo $message;
}
die();



