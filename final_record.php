<?php
$servername="localhost";
$username="root";
$password="";
$dbname="booking_db";

$conn= new mysqli($servername, $username, $password,$dbname);
if($conn->connect_error)
{ die("Connection failed : " . $conn->connect_error);
}
$sql="CREATE TABLE Final_Record (Flight_Name VARCHAR(30) , Depart_Time VARCHAR(30), Dest_Time VARCHAR(30), Total_Duration VARCHAR(30), Price VARCHAR(15))";

if($conn->query($sql)===TRUE)
{ echo "Successful Table Creation "; }
else
{ echo" Error creating table " . $conn->error;
}

$conn->close();
?>

