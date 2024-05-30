<?php
header('Content-type: text/html; charset=cp1251');
function getTables(){
    $file= file_get_contents("AT.sql");
    preg_match_all('/Object:  Table(.*?)Script Date:/s', $file, $matches);
    $values = $matches[1];
    foreach ($values as $key=>$value) $values[$key]= trim($value);
    return $values;
}
function getField($op){
    $file= file_get_contents("fields.txt");
    preg_match("/$op=>(.*?)<=$op/s", $file, $result);
    return trim($result[1]);
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

function viewTables($tables){
    ?>
<style>
    .blockTables{
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        column-gap: 10px;
        row-gap: 4px;
        max-width: 1300px;
        margin: 270px auto 0 auto;
    }
    .blockTables div div{
        padding: 4px 0;
        //border-bottom: solid 1px #00aaff70;
    }
    .blockTables div div span{
        display: inline-block;
        width: 30px;
    }

</style>
<div class="blockTables">
    <div>
    <?php
    $ci= Ceil(count($tables)/4);
    foreach ($tables as $code=>$name):
        if($code%$ci==0 && $code!==0) echo "</div><div>";
        echo "<div>
                <span>$code</span>
                $name
        </div>";
    endforeach;
    ?>
    </div>
</div>
<?php
}

function printResults($conn,$table,$tsql= false){
    if($tsql === false)
        $tsql= "SELECT * FROM $table";
    echo "<br>$table<br>";
    echo "<pre style='margin-bottom: 10px; padding-bottom: 10px; border-bottom: solid 1px #00aaff70;'>";
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
    echo "</pre>";
}


$conn= OpenConnection();
$tables= getTables();
viewTables($tables);

