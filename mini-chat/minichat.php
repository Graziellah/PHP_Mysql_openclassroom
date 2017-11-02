
<?php
session_start(); 
if (isset($_POST["submit"]))
{
	if ($_POST["submit"] == "OK")
	{
	 	$_SESSION['pseudo'] = $_POST['pseudo'];
	}
}
?>
<!DOCTYPE html>
<html>
<head>
	<title>Minichat</title>
	<meta charset="utf-8">
	<meta http-equiv="refresh" content="30;url=minichat.php/" />
</head>
<body>
<h1 align="center">Minichat</h1>
<div align="center">
	<form method="post" action="minichat_post.php">  
		Identifiant: <input type="text" name="pseudo" value ="<?php if (isset($_SESSION['pseudo'])){ echo $_SESSION['pseudo'];} ?>" />
		<br>
		Mot de passe: <textarea rows="2" type="text" name="message"></textarea><br/>
		<input type="submit" name="submit" value="OK">
	</form>
	</div>
	<div align="left">
	<?php 
	try{
		$bdd = new PDO('mysql:host=www.graziella.fr; dbname=test; charset=utf8', 'root', '',
		array(PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
	}
	catch(Exception $e)
	{
		die('Erreur:'.$e->getMessage());
	}
	$reponse = $bdd->query('SELECT pseudo, message, DATE_FORMAT(date, \'%d/%m/%Y %Hh:%imin:%ss\') AS date_post FROM minichat ORDER BY id DESC LIMIT 0, 10');
	while($donnees = $reponse->fetch())
	{
		echo 'Message envoyé le '.$donnees['date_post'].' par <strong>'. htmlspecialchars($donnees['pseudo']).'</strong> :'.htmlspecialchars($donnees['message']).'<br/><br/>';
	}
	$reponse->closeCursor();
	?>
	</div>
</body>
</html>

</html></body