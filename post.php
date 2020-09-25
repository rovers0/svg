<?php 
     class post{
        private $conn ;

        public function __construct(){
            $ojb = new connectDB();
            $this->conn = $ojb->getconnect();
        }

        public function getlatedpost(){
            return $this->conn->query("SELECT * FROM post order by posted_date desc limit 5");
        }
        public function getallpost(){
            return $this->conn->query("SELECT * FROM post order by posted_date desc  ");
        }
        public function getpostbyid($id)
        {
            return $this->conn->query("SELECT * FROM post where id = ".$id);
        }
        public function getpostbycat($id)
        {
            return $this->conn->query("SELECT * FROM post inner join post_category on post.id = post_category.post_id  where post_category.category_id ='$id' order by post.posted_date desc ");
        }
        public function getpostlike($id)
        {
            return $this->conn->query("SELECT total_like FROM post where id = ".$id);
        }
        public function updatepostlike($id,$value)
        {
            return $this->conn->query("UPDATE post SET total_like = '$value'  where id = ".$id);
        }
    }

?>