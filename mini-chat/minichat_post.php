<?php
	session_start();
	$_SESSION['pseudo'] = $_POST['pseudo']; 
	$_SESSION['message'] = $_POST['message'];
	try{
		$bdd = new PDO('mysql:host=localhost; dbname=test; charset=utf8', 'root', '',
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	}
	catch(Exception $e)
	{
		die('Erreur:'.$e->getMessage());
	}
	echo "dans minichat_post";
	$reponse = $bdd->prepare('INSERT INTO minichat (pseudo, message, date ) VALUES (?, ?, NOW())');
	$reponse->execute(array($_POST['pseudo'], $_POST['message']));
	header('Location:minichat.php');
?>