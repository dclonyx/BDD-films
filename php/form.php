<?php
class form {

    private $data;

    public function __construct($data){
        $this->data=$data;
    }

    public function surround($html){
        return "<p>{$html}</p>";
    }

    public function input($name, $place){
        return $this->surround('<input type="text" value="" name="'.$name.'" placeholder="'.$place.'">');
    }

    public function submit(){
        return $this->surround('<button type="submit">Ajouter</button>');
    }
}
?>