<?php 
//session_start();
if(!isset($_SESSION["all_ques"])){
	$_SESSION['wait']=array_fill(1, 30, 'false');
	$_SESSION['ques_pointer']=1;
	$sql="SELECT * FROM question  ORDER BY RAND() LIMIT 30";
	$res=mysqli_query($con,$sql);
	echo mysqli_error($con);
	foreach ($res as $key ) {
		//print_r($key);echo "<br>";
		$all_ques[]=$key;
	}
	$_SESSION["all_ques"]=$all_ques;
}

//print_r($_SEESION['all_ques']);
//echo $_SEESION['all_ques'][0]['id'];

