<?php 
    include_once './connectDB.php';
    include_once './category.php';
    include_once './post.php';

    $cate = new category();
    $post = new post();
    $method = $_REQUEST['mod'];

    switch ($method) {
        case 'nextpost':
            $star = $_REQUEST['spoint'] *1;
            $end = $star + 5;
            $list = $post->getallpost();
            $arrpost = array();
            while($row = $list->fetch_assoc()){
                array_push($arrpost,$row);
            }
            $count = count($arrpost);
            if ($end < $count) {
                $result = gethtml($star,$end,$arrpost);
                $result.='<div id="none" data-point="'.$end.'" class="row mt-3 text-center ">
                <a  class=" mx-auto text-primary" href="#">Tai them &gt;&gt;</a>
                </div>';
            }
            else{
                $end = $count;
                $result = gethtml($star,$end,$arrpost);
            }          
            echo $result;
            break;
        case 'readpost':
            $pid = $_REQUEST['id'];
            $list = $post->getpostbyid($pid);
            $result = null;
            while($row = $list->fetch_assoc()){
                $result.='<div class="modal fade show" role="dialog"  style="display:block;" aria-modal="true" id="modal1">
                <div class="modal-dialog modal-xl modal-dialog-scrollable">
                    <div class="modal-content " >
                        <div class="modal-header">
                            <h5 class="modal-title"> '.$row['title'].'</h5>
                            <button type="button " id="close" class="close" data-dismiss="modal" aria-label="close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="container text-center">
                                <div class="row">
                                    <div class="col-lg-10 mx-auto">
                                        <div class="row text-center">
                                            <img class="mx-auto img-fluid" src="./images/'.$row['images'].'" alt="">
                                        </div>
                                        <p>'.$row['posted_date'].'</p>
                                        <p>'.$row['content'].'</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';
            }
            echo $result;
            break;
        case 'readpostbycat':
            $cateid = $_REQUEST['id'];
            $star = $_REQUEST['spoint'] *1;
            $end = $star + 5;
            $list = $post->getpostbycat($cateid);
            $arrpost = array();
            while($row = $list->fetch_assoc()){
                array_push($arrpost,$row);
            }
            $count = count($arrpost);
            if ($end < $count) {
                $result = gethtml($star,$end,$arrpost);
                $result.='<div id="catid" data-id="'.$cateid.'" data-point="'.$end.'" class="row mt-3 text-center ">
                <a  class=" mx-auto text-primary" href="#">Tai them &gt;&gt;</a>
                </div>';
            }
            else{
                $end = $count;
                $result = gethtml($star,$end,$arrpost);
            }          
            echo $result;
            break;
        case 'like':
            $id = $_REQUEST['id'];
            $list = $post->getpostlike($id);
            $result = null;
            while($row = $list->fetch_assoc()){
                $val= ++$row['total_like'];
                $update = $post->updatepostlike($id,$val);
                $result.='<span>'.$row['total_like'].'</span>';
            }
            echo $result;
            break;
        default:
            break;
    }
    function gethtml($star,$end,$arrpost){
        $result = null;
        for ($i=$star; $i < $end ; $i++) { 
            $result.='<article class="row m-2 listpost ">
                            <div class="col-sm-12 col-md-6">
                                <div class="post-img">
                                    <a href="#" type="button" data-toggle="modal" class="rpost p-5" data-id="'.$arrpost[$i]['id'].'" data-target="#modal'.$arrpost[$i]['id'].'">
                                        <img class="img-fluid" src="./images/'.$arrpost[$i]['images'].'" alt="">
                                    </a>
                                    
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class=" row post-content">
                                    <h5 class="mt-5"><a class="rpost text-primary " data-id="'.$arrpost[$i]['id'].'" href="#">'.$arrpost[$i]['title'].'</a></h5>
                                    <span class="text-muted">ngay dang : '.$arrpost[$i]['posted_date'].'</span>
                                    <p class="content">'.substr( $arrpost[$i]['content'],0,150).'...</p>
                                    <span data-id="'.$arrpost[$i]['id'].'" class="like-icon mr-3 mb-3"><i class="fas fa-thumbs-up"></i></span><span id="total_like">'.$arrpost[$i]['total_like'].'</span> 
                                </div>
                            </div>
                        </article>';
        }
        return $result;
    }
?>