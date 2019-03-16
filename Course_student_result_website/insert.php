<?php
// define variables and set to empty values
//$name = $email = $gender = $comment = $website = "";
$conn = new mysqli('localhost','root','','student');
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if(isset($_POST['submit'])){ // Fetching variables of the form which travels in URL
  $subid = ($_POST["id"]);
  $subname = ($_POST["name"]);
  $submarks = ($_POST["marks"]);
  $outof = ($_POST["outof"]);


$sql = "INSERT INTO subject (subid, subname,submarks,outof)
VALUES ('$subid', '$subname', '$submarks', '$outof')";

if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
}
?>
