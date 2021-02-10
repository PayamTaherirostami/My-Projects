<?php


if (empty($_POST)) {
	header('Location: '.$_SERVER['HTTP_REFERER']);
	exit();
}

header('Location: thx.html')

//if(isset($_post['submit'])){
//    $name=$_post['name'];
//     $mailFrom=$_post['name'];
//     $subject=$_post['name'];
//     $message=$_post['name'];
//    
//    $mailTo="payamt83@gmail.com";
//    $headers= "From: ".$mailFrom;
//    $txt= " you have received an email from".$name.".\n\n".$message;
//    
//    
//    mail($mailTo,$subject,$txt,$headers);
//    header("location: email-blast.html");
//}
//    
