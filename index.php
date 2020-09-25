<?php 
    session_start();
    include_once './connectDB.php';
    include_once './category.php';
    include_once './post.php';

    $cate = new category();
    $post = new post();
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>vu hoang long </title>
    <link rel="stylesheet" href="./bootstrap-4.5.2-dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="./fontawesome-free-5.14.0-web/css/all.min.css">
    <link rel="stylesheet" href="./css/style.css">
</head>
<body class="modal-open">
    <div id="loader"  >
        <div class="loader centerbox"></div>
    </div>
    <header class="header">
        <div class="header-logo text-center">
            <a href="./">
                <img class="img-fluid mx-auto header-logo" src="./images/logo.svg" alt="logo">
            </a>
        </div>
        <nav class="navbar navbar-expand navbar-light bg-light">
            <div class="container">
                <button class="navbar-toggler" data-toggle="collapse" type="button" aria-expanded="false" data-target="#nav"> 
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="nav">
                    <ul class="navbar-nav mr-auto">
                        <?php  
                            $list = $cate->getallcat();
                            $result = null;
                            while($row = $list->fetch_assoc()){
                                $result .= '<li class="nav-item mr-2"><a class="bycat nav-link text-primary" data-point="0" data-id="'.$row['id'].'" href="#">'.$row['name'].'</a></li>';
                            }
                            echo $result;
                        ?>
                        <!-- <li class="nav-item mr-2"><a class="nav-link text-primary" data-id="1" href="#">case1</a></li>
                        <li class="nav-item mr-2"><a class="nav-link text-primary" data-id="1" href="#">case1</a></li>
                        <li class="nav-item mr-2"><a class="nav-link text-primary" data-id="1" href="#">case1</a></li> -->
                    </ul>
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" name="search" id="" placeholder="tim kiem">
                        <button type="submit" class="btn btn-outline-success">TIM KIEM</button>
                    </form>
                </div>
            </div>
        </nav>
    </header>
    <section class="main-content">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-10">
                    <h3>Danh sach bai viet</h3>
                    <div class="list-post">
                        <?php 
                            $listpost =$post->getlatedpost();
                            $result = null;
                            while($row = $listpost->fetch_assoc()){
                                $result.='<article class="row m-2 listpost">
                                <div class="col-sm-12 col-md-6">
                                    <div class="post-img">
                                        <a href="#" type="button" data-toggle="modal" class="rpost p-5" data-target="#modal'.$row['id'].'" data-id="'.$row['id'].'">
                                            <img class="img-fluid" src="./images/'.$row['images'].'" alt="">
                                        </a>
                                        
                                    </div>
                                </div>
                                <div class="col-sm-12 col-md-6">
                                    <div class=" row post-content">
                                        <h5 class="mt-5"><a class="rpost text-primary " data-id="'.$row['id'].'" href="#">'.$row['title'].'</a></h5>
                                        <span class="text-muted">ngay dang : '.$row['posted_date'].'</span>
                                        <p class="content">'.substr( $row['content'],0,150).'...</p>
                                        <span data-id="'.$row['id'].'" class="like-icon mr-3 mb-3"><i class="fas fa-thumbs-up"></i></span><span id="total_like">'.$row['total_like'].'</span> 
                                    </div>
                                </div>
                            </article>';
                            }
                            $result.='<div id="none" data-point="5" class="row mt-3 text-center ">
                            <a class=" mx-auto text-primary" type="button">Tai them &gt;&gt;</a>
                            </div>';
                            echo $result;
                        ?>
                        <!-- <article class="row">
                            <div class="col-sm-12 col-md-6">
                                <div class="post-img">
                                    <a href="#" type="button" data-toggle="modal" data-target="#modal1">
                                        <img class="img-fluid" src="./images/p1.jpg" alt="">
                                    </a>
                                    
                                </div>
                            </div>
                            <div class="col-sm-12 col-md-6">
                                <div class="post-content">
                                    <h5><a class="text-primary" href="#">title</a></h5>
                                    <span class="text-muted">ngay dang : 27/8/2020</span>
                                    <p class="content">hsvdjasbcb bjdasbu;cbsajbcja bjs bua;sbdufgsbjdfbds;ahvdb.k ;iuas fas gfu</p>
                                    <span class="like-icon m-3"><i class="fas fa-thumbs-up"></i></span><span>123</span> 
                                </div>
                            </div>
                        </article>
                        <div class="row mt-3 text-center ">
                            <a class=" mx-auto text-primary" href="#">Tai them &gt;&gt;</a>
                        </div> -->
                    </div>
                </div>
                <div class="col-sm-12 col-md-2 ">
                    <aside>
                        <h3>bo loc</h3>
                        <ul class="list-group">
                        <?php  
                            $list = $cate->getallcat();
                            $result = null;
                            while($row = $list->fetch_assoc()){
                                $result .= '<li class="list-group-item"><input class="mr-2" type="checkbox" name="category[]" value="'.$row['id'].'" >'.$row['name'].'</li>';
                            }
                            echo $result;
                        ?>
                            
                        </ul>
                    </aside>
                </div>
            </div>
            
        </div>
    </section>
    <section id="modal-loc">
        <div class="modal fade" role="dialog" tabindex="-1"   aria-modal="true" id="modal1">
            <div class="modal-dialog modal-xl modal-dialog-scrollable">
                <div class="modal-content " >
                    <div class="modal-header">
                        <h5 class="modal-title"> hello</h5>
                        <button type="button " class="close" data-dismiss="modal" aria-label="close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body">
                        <div class="container text-center">
                            <div class="row">
                                <div class="col-lg-10 mx-auto">
                                    <div class="row text-center">
                                        <img class="mx-auto img-fluid" src="./images/p9.jpg" alt="">
                                    </div>
                                    <p>27/08/20020</p>
                                    <p>dbajdksaldhkasldhkslahdjashdjahsdjsahdjhsakjfhjdsafhjdsahfjkdsahfjdshfjsdbfjdsbvjbjcbsjdbcjsdbcjsdbkjcasbcjsbjkcsabdcjksabdjclsadbc jsdbcjsdkbcjsdkbcjsdkbcjsd;kacbsadjbcsa;jkcbdsjkbcjsdkabcsjakbcs</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <footer class="bg-dark">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 col-md-6">
                    <img class="img-fluid pb-2" src="./images/logoThanhDoanTP.png" alt="">
                    <h5>Thanh Doan Thanh Pho HCM</h5>
                    <p><b>Dia CHi:</b> so 1 pham ngoc thach Quan 1 TP.HCM</p>
                    <P><b>Mail:</b> <a href="mailto:thanhdoan@tphcm.gov.vn">thanhdoan@tphcm.gov.vn</a></P>
                </div>
                <div class="col-sm-12 col-md-6 text-white text-center mt-5">
                    <h6>
                        ©2014 Bản quyền thuộc về Thành Đoàn Thành phố Hồ Chí Minh. <br>Cấm sao chép dưới mọi hình thức nếu không có sự chấp thuận bằng văn bản.
                    </h6>
                </div>
            </div>
        </div>
    </footer>
</body>
<script src="./js/jquery-3.5.1.min.js"></script>
<script src="./bootstrap-4.5.2-dist/js/bootstrap.min.js"></script>
<script src="./js/main.js"></script>
</html>