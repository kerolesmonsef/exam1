<?php 
session_start();
include ("connect.php"); 
include("get_ques.php");
//$_SESSION['all_ques']=30;
//$_SESSION['ques_pointer']=1;
//echo $_SESSION['ques_pointer'];
if(isset($_GET['skipto'])){
	$to=$_GET['skipto'];
	$_SESSION['ques_pointer']=$to;
}
elseif(isset($_GET['skip_btn'])){
		if($_SESSION['ques_pointer']>=30)$_SESSION['ques_pointer']=29;

	if ($_SESSION['wait'][ $_SESSION['ques_pointer']]!='true'){
		$_SESSION['wait'][ $_SESSION['ques_pointer']]='wait';
	}
	$_SESSION['ques_pointer']++;
}
elseif(isset($_GET["answer_btn"])) {
	$_SESSION['wait'][ $_SESSION['ques_pointer']]='true';
	$myid=$_SESSION['all_ques'][ $_SESSION['ques_pointer'] ]['id'];
	$sql ="SELECT * FROM answers WHERE question_id='$myid'";
	$res =mysqli_query($con,$sql);
	if(mysqli_num_rows($res)>0){
		$res=mysqli_fetch_array($res);
	}

	$_SESSION['ques_pointer']++;
}
?>
<!DOCTYPE HTML>
<html>
<head>
    <link rel="stylesheet"   href="css/bootstrap.css">
    <link rel="stylesheet"   href="css/animate.min.css">
    <link rel="stylesheet"   href="css/Css.css">
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-xs-12">
			<header>
				<h1 class="text-danger">Quezzer.com</h1>
			</header>
			<div class="question-num">
				<h3 > Question <span class="text-danger"><?php echo $_SESSION['ques_pointer'] ?></span> of 30</h3>
			</div>
			<form method="GET">
				<span class="text-primary "><?php echo @$_SESSION['all_ques'][ $_SESSION['ques_pointer'] -1]['subject']; ?></span>
				<ul class="list-unstyled">
					<li> <input type="radio" value="0" name="answer" checked>- answer -0 </li>
					<li> <input type="radio" value="1" name="answer"        >- answer -1 </li>
					<li> <input type="radio" value="2" name="answer"        >- answer -2 </li>
					<li> <input type="radio" value="3" name="answer"        >- answer -3 </li>
				</ul>
				<input type="submit" class="btn btn-success" name="answer_btn" value="Answer">
				<input type="submit" class="btn btn-warning"  name="skip_btn" value="Skip">
				<br>
				<br>
				<br>
				<br>
				<!-- shoing the skips -->
				<div class="text-center">
					<?php 
						skips(30,getcurrent($_SESSION['ques_pointer']));
					 ?>
				</div>
			</form>
			<ul class="ques-info list-unstyled text-center">
				<?php  skips2();?>
			</ul>
		</div>
	</div>
</div>
</body>
</html>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/js.js"></script>

<?php 
function skips($limit=30,$current){
	$min=$current-5;
	$max=$current+5;
	if($current>4)
		 echo '<a class=" btn btn-info" href="?skipto='.$min.'"> <--  </a>';

	for($i=$current+1,$j=0; $i <=$limit and $j<5 ; $i++,$j++) { 
		if($_SESSION['wait'][$i]=='false')
		echo '<a href="?skipto='.$i.'" class=" btn btn-danger"> '.$i.' </a>';
	elseif($_SESSION['wait'][$i]=='true'){
		echo '<a href="?skipto='.$i.'" class=" btn btn-success"> '.$i.' </a>';
	}
	else 
		echo '<a href="?skipto='.$i.'" class=" btn btn-warning"> '.$i.' </a>';

	}
	if($current<$limit-5)
		 echo '<a class=" btn btn-info" href="?skipto='.$max.'"> -->  </a>';
}
function getcurrent($num){
	if($num%5==0){
		return $num;
	}
		$n=$num%5;
		return $num-$n;
}
function skips2(){
	
	for($i=1; $i <=30  ; $i++) { 
		if($_SESSION['wait'][$i]=='false')
		echo '<a href="?skipto='.$i.'" class=" btn btn-danger form-control lasta"> '.$i.' </a>';
	elseif($_SESSION['wait'][$i]=='true'){
		echo '<a href="?skipto='.$i.'" class=" btn btn-success form-control lasta"> '.$i.' </a>';
	}
	else 
		echo '<a href="?skipto='.$i.'" class=" btn btn-warning form-control lasta"> '.$i.' </a>';

	}
	
}
 ?>

