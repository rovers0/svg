<?php 
    class category{
        private $conn ;

        public function __construct(){
            $ojb = new connectDB();
            $this->conn = $ojb->getconnect();
        }

        public function getallcat(){
            return $this->conn->query("SELECT * FROM category ");
        }
    }

?>