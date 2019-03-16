<?php include('server.php') ?>
<?php
//$con=mysqli_connect('localhost','root');
//mysqli_select_db($con,'student');
// Create connection
$conn = new mysqli('localhost','root','','student');
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$q="select * from subject";

$query=mysqli_query($conn,$q);



  while($result= mysqli_fetch_array($query)) {

    echo   "<tr>";
          echo "<td>" . $result['subid'] . "</td>";
          echo "<td>" . $result['subname'] . "</td>";
          echo "<td>" . $result['submarks'] . "</td>";
          echo "<td>" . $result['outof'] . "</td>";

    echo "</tr>";


  };




 ?>
