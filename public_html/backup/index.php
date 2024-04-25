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
        grid-template-columns: repeat(5,50px 3fr);
        column-gap: 10px;
        row-gap: 4px;
    }
    .blockTables div{
        padding: 2px 0;
        border-bottom: solid 1px #00aaff70;
    }
    .blockTables > div:nth-child(2n){
        border-right: solid 1px #00aaff70;
    }
    .blockTables > div:nth-child(2n+1){
        text-align: right;
    }

</style>
<div class="blockTables">
    <?php
    foreach ($tables as $code=>$name)
        echo "<div>$code</div><div>$name</div>";
    ?>
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


$hdb= mysqli_connect("ucrtecrt.beget.tech","ucrtecrt_stats","5&t0nOzk","ucrtecrt_stats");



//print_r(getField("okso"));
$tsql= "SELECT * FROM ".$tables[92]." WHERE ".getField("okso")."='38.03.01'";
if(($result = sqlsrv_query($conn,$tsql,[],["Scrollable" => SQLSRV_CURSOR_KEYSET ])) !== false) {
    echo sqlsrv_num_rows($result) . "index.php";
    ?>
    <div style="display: grid; grid-template-columns: repeat(10, 1fr);">
        <?php
        while ($obj = sqlsrv_fetch_array($result)) {
            echo "<div><pre>";
            echo $obj[0]."<br>";
            echo $obj[4]."<br>";
            echo $obj[8]."<br>";
            echo $obj[18]."<br>";
            echo $obj[19]."<br>";
            echo $obj[20]."<br>";
            echo $obj[21]."<br>";
            echo $obj[27]."<br>";
            echo $obj[44]."<br>";
            $sql= (object)[
                    "id"=>$obj[0],
                    "code"=>$obj[3],
                    "name"=>$obj[4],
                    "full"=>$obj[9],
                    "level"=>$obj[8],
            ];
            print_r($sql);
            echo "</pre></div>";
        }
        ?>
    </div>
    <?
}


DIE();

//printResults($conn,$tables[108]); //
//printResults($conn,$tables[108]); //
//printResults($conn,$tables[100]); // Статус студента
printResults($conn,$tables[52]); // Заявления

$tsql= "SELECT * FROM $tables[92] WHERE ".getField("code")."='264'";
printResults($conn,$tables[92],$tsql);
printResults($conn,$tables[105]);


?>

</body>
</html>

