<?php
namespace src;

class updates{
    public function __construct($config){
        $this->mssql= new mssql($config->mssql);
        $this->mysql= new mysql($config->mysql);
    }

    public function convert($field){
        return mb_convert_encoding($field,"cp1251");
    }

    public function updateFaculties(){
        if($this->mysql->checkRecord("upds","code='faculties' and date<='".date("Y-m-d H:i:s",time()-3600)."'") === false) return false;
        $this->mssql->table("Факультеты")->get();
        echo "<pre>";
        foreach($this->mssql->getResults() as $record){
            $where= [
                "id"=>$this->mssql->getField($record,"Код")
            ];
            $sql=[
              "id"=>$this->mssql->getField($record,"Код"),
              "name"=>$this->mssql->getField($record,"Факультет"),
              "short"=>$this->mssql->getField($record,"Сокращение"),
              "acceptance"=>$this->mssql->getField($record,"Прием"),
            ];
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord("faculties",$where) !== false)
                $this->mysql->table("faculties")->where($where)->update($sql);
            else
                $this->mysql->table("faculties")->insert($sql);
        }
        $this->mysql->table("upds")->where(["code"=>"faculties"])->update(["date"=>date("Y-m-d H:i:s")]);
    }
    public function updateLevels(){
        $table= "levels";
        if($this->mysql->checkRecord("upds","code='$table' and date<='".date("Y-m-d H:i:s",time()-3600)."'") === false) return false;
        $this->mssql->table("Уровень_образования")->get();
        echo "<pre>";
        foreach($this->mssql->getResults() as $record){
            $where= [
                "id"=>$this->mssql->getField($record,"Код_записи"),
            ];
            $sql=[
                "id"=>$this->mssql->getField($record,"Код_записи"),
                "name"=>$this->mssql->getField($record,"Название"),
            ];
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord($table,$where) !== false)
                $this->mysql->table($table)->where($where)->update($sql);
            else
                $this->mysql->table($table)->insert($sql);
        }
        $this->mysql->table("upds")->where(["code"=>$table])->update(["date"=>date("Y-m-d H:i:s")]);
    }
    public function updateTypes(){
        $table= "types";
        if($this->mysql->checkRecord("upds","code='$table' and date<='".date("Y-m-d H:i:s",time()-3600)."'") === false) return false;
        $this->mssql->table("Тип_Обучения")->get();
        echo "<pre>";
        foreach($this->mssql->getResults() as $record){
            $where= [
                "id"=>$this->mssql->getField($record,"Код"),
            ];
            $sql=[
                "id"=>$this->mssql->getField($record,"Код"),
                "name"=>$this->mssql->getField($record,"Название"),
            ];
            print_r($sql);
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord($table,$where) !== false)
                $this->mysql->table($table)->where($where)->update($sql);
            else
                $this->mysql->table($table)->insert($sql);
        }
       $this->mysql->table("upds")->where(["code"=>$table])->update(["date"=>date("Y-m-d H:i:s")]);
    }
    public function updateSpecialties(){
        $table= "specialties";
        if($this->mysql->checkRecord("upds","code='$table' and date<='".date("Y-m-d H:i:s",time()-3600)."'") === false) return false;
        $this->mssql->table("Специальности")->where(["ГодНабора"=>2024])->order(["ОКСО"])->get();
        echo "<pre>";
        foreach($this->mssql->getResults() as $record){
            $where= [
                "code"=>$this->mssql->getField($record,"ОКСО"),
            ];
            $sql=[
                "code"=>$this->mssql->getField($record,"ОКСО"),
                "fid"=>$this->mssql->getField($record,"Код_Факультета"),
                "name"=>$this->mssql->getField($record,"Название_Спец"),
                "level"=>$this->mssql->getField($record,"Уровень"),
            ];
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord($table,$where) !== false)
                $this->mysql->table($table)->where($where)->update($sql);
            else
                $this->mysql->table($table)->insert($sql);
        }
        $this->mysql->table("upds")->where(["code"=>$table])->update(["date"=>date("Y-m-d H:i:s")]);
    }
    public function updateProfiles(){
        $table= "profiles";
        if($this->mysql->checkRecord("upds","code='$table' and date<='".date("Y-m-d H:i:s",time()-3600)."'") === false) return false;
        $this->mssql->table("Специальности")->where(["ГодНабора"=>2024])->order(["ОКСО"])->get();
        echo "<pre>";
        foreach($this->mssql->getResults() as $record){
            $places= (int)$this->mssql->getField($record,"ОО")+
                    (int)$this->mssql->getField($record,"ЦН")+
                    (int)$this->mssql->getField($record,"КВ")+
                    (int)$this->mssql->getField($record,"СК");
            $where= [
                "id"=>$this->mssql->getField($record,"Код"),
            ];
            $sql=[
                "id"=>$this->mssql->getField($record,"Код"),
                "code"=>$this->mssql->getField($record,"ОКСО"),
                "fid"=>$this->mssql->getField($record,"Код_Факультета"),
                "level"=>$this->mssql->getField($record,"Уровень"),
                "type"=>$this->mssql->getField($record,"ФормаОбучения"),
                "name"=>$this->mssql->getField($record,"Название_Спец"),
                "short"=>$this->mssql->getField($record,"Шифр"),
                "acceptance"=>$this->mssql->getField($record,"Прием"),
                "year"=>$this->mssql->getField($record,"ГодНабора"),
                "contracts"=>(int)$this->mssql->getField($record,"СН"),
                "places"=>$places,
            ];
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord($table,$where) !== false)
                $this->mysql->table($table)->where($where)->update($sql);
            else
                $this->mysql->table($table)->insert($sql);
        }
        $this->mysql->table("upds")->where(["code"=>$table])->update(["date"=>date("Y-m-d H:i:s")]);
    }
    public function updateAStatus(){
        $table= "astatus";
        if($this->mysql->checkRecord("upds","code='$table' and date<='".date("Y-m-d H:i:s",time()-3600)."'") === false) return false;
        $this->mssql->table("Статус_Студента")->get();
        echo "<pre>";
        foreach($this->mssql->getResults() as $record){
            $where= [
                "id"=>$this->mssql->getField($record,"Код"),
            ];
            $sql=[
                "id"=>$this->mssql->getField($record,"Код"),
                "name"=>$this->mssql->getField($record,"Статус"),
                "short"=>$this->mssql->getField($record,"Сокращ"),
            ];
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord($table,$where) !== false)
                $this->mysql->table($table)->where($where)->update($sql);
            else
                $this->mysql->table($table)->insert($sql);
        }
        $this->mysql->table("upds")->where(["code"=>$table])->update(["date"=>date("Y-m-d H:i:s")]);
    }

    public function structures():string{
        $this->updateFaculties();
        $this->updateLevels();
        $this->updateTypes();
        $this->updateSpecialties();
        $this->updateProfiles();
        $this->updateAStatus();
        return "structures update success";
    }

    public function applications(){
        $table= "applications";
        if($this->mysql->checkRecord("upds","code='$table' and date<='".date("Y-m-d H:i:s",time()-0)."'") === false) return false;
        $this->mssql->table("Все_Заявления")->where()->order()->get();
        echo "<pre>";
        $i=0;
        foreach($this->mssql->getResults() as $record){
            if($i==10) die();
            $i++;
            $where=[
                "id"=>$this->mssql->getField($record,"Код_Заявления"),
            ];
            $status= 0;
            if((int)$this->mssql->getField($record,"Зачислен"))$status=1;
            if((int)$this->mssql->getField($record,"ОтказалсяОтЗачисления"))$status=2;
            if((int)$this->mssql->getField($record,"СогласенНаЗачисление"))$status=3;
            if((int)$this->mssql->getField($record,"ЗабралДок"))$status=4;

            $date= (array)$this->mssql->getField($record,"Дата_Подачи");
            $sql=[
                "id"=>$this->mssql->getField($record,"Код_Заявления"),
                "aid"=>(int)$this->mssql->getField($record,"ID"),
                "pid"=>(int)$this->mssql->getField($record,"Код_Специальности"),
                "bases"=>$this->mssql->getField($record,"Основания"),
                "fid"=>(int)$this->mssql->getField($record,"Факультет"),
                "asid"=>(int)$this->mssql->getField($record,"Статус"),
                "date"=>$date['date'],
                "type"=>(int)$this->mssql->getField($record,"КодФормы"),
                "way"=>(int)$this->mssql->getField($record,"КодСпособаПодачи"),
                "status"=> $status,
            ];
            $sql= mb_convert_encoding($sql,"utf8","cp1251");
            if($this->mysql->checkRecord($table,$where) !== false)
                $this->mysql->table($table)->where($where)->update($sql);
            else
                $this->mysql->table($table)->insert($sql);
        }
        $this->mysql->table("upds")->where(["code"=>$table])->update(["date"=>date("Y-m-d H:i:s")]);

    }


}

