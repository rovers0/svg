<?php 
    class connectDB{
        private $host = "localhost";
        private $user = "root";
        private $pass = "";
        private $db = "svg";
        private $conn = null;

        public function __construct(){
            $this->conn = new mysqli($this->host,$this->user,$this->pass,$this->db);
        }
        public function getconnect(){
            return $this->conn;
        }
    }
?>