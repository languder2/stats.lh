<?php
namespace src;
class mysql{

    private $conn;
    private $res;
    public $results = [];
    private $query;
    private $table;
    private $select= " * ";
    private $where;
    private $group;
    private $order;
    public function __construct($config){
        $this->conn= mysqli_connect($config->host,$config->user,$config->pass,$config->dbname);
        $this->query("SET NAMES utf8")->get();
    }
    public function table($table){
        $this->res= false;
        $this->results = [];
        $this->query= false;
        $this->select= " * ";
        $this->where= false;
        $this->group= false;
        $this->order= false;
        $this->table= $table;
        return $this;
    }

    public function query($sql= false){
        $this->query= "SELECT $this->select FROM $this->table $this->where $this->group $this->order";
        if($sql !== false)
            $this->query= $sql;
        return $this;
    }

    public function select($arg= false){
        if($arg === false) return $this;
        if(is_array($arg)){
            foreach ($arg as $key=>$value)
                $arg[$key]= "$value";
            $arg= implode(",",$arg);
        }
        $this->select= " $arg ";
        return $this;
    }
    public function order($arg= false){
        if($arg === false) return $this;
        if(is_array($arg)){
            foreach ($arg as $key=>$value)
                $arg[$key]= "$value";
            $arg= implode(",",$arg);
        }
        $this->order= " ORDER BY $arg";
        return $this;
    }
    public function where($arg= false){
        if($arg === false) return $this;
        $this->where = "WHERE ";
        if(is_array($arg)){
            foreach ($arg as $field=>$value){
                if($this->where != "WHERE ") $this->where.= " AND ";
                $this->where.= "$field='$value'";
            }
        }
        else
            $this->where.= $arg;
        return $this;
    }

    public function get():object{
        if($this->query === false) $this->query();
        $this->res = mysqli_query($this->conn,$this->query);
        return $this;
    }
    public function debug():object{
        if($this->query === false) $this->query();
        echo $this->query;
        return $this;
    }

    public function numRows():int{
        return mysqli_num_rows($this->res);
    }

    public function getResults($type= " object"):object{
        $results= [];
        if($type== "array")
            while ($obj = mysqli_fetch_array($this->res)) $results[]= $obj;
        else
            while ($obj = mysqli_fetch_object($this->res)) $results[]= $obj;
        $this->results= $results;
        return $this->results;
    }
    public function getResult($type= " object"):array|object{
        if($type== "array")
            return mysqli_fetch_array($this->res);
        else
            return mysqli_fetch_object($this->res);
    }

    public function checkRecord($table,$where,$primary= false):bool{
        $q= $this->table($table)->where($where)->get();
        if($q->numRows($q) == 0) return false;
        if($primary === false) return true;
        return $q->getResult()->{$primary};
    }

    public function insert($arg):bool{
        $values= $this->getValues($arg);
        $this->query= "INSERT INTO $this->table SET $values";
        $this->get();
        return true;
    }
    public function update($arg):bool{
        $values= $this->getValues($arg);
        $this->query= "UPDATE $this->table SET $values $this->where";
        $this->get();
        return true;
    }

    public function getValues($arg):string{
        $values= "";
        foreach ($arg as $field=>$value){
            $value= trim($value??"");
            if(empty($value)) continue;
            if(strlen($values)!=0) $values.=", ";
            $values.= "$field= '".addslashes($value)."'";
        }
        return $values;
    }

}

