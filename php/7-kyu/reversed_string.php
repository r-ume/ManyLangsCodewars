<!-- Complete the solution so that it reverses the string value passed into it. -->

<?php

class CustomString{

  private $str;

  public function __construct($str){
    $this->str = $str;
  }

  public function to_array(){
    $this->str = str_split($this->str);
  }

  public function reverse(){
    $this->str = array_reverse($this->str);
  }

  public function to_string(){
    $this->str = implode($this->str);
    return $this->str;
  }
}

$str = new CustomString('str');
$str->to_array();
$str->reverse();
echo($str->to_string());

// Best anwser
// return strrev($str);
