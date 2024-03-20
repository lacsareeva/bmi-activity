<?php
//This variable stores the hostname of mysql server.
$serverName = "localhost";

//This variable stores the username used to connect to the MySQL database.
$user = "root";

//This variable stores the pass used to connect to the MySQL database.
$pass = "";

//This variable stores the name of the database yo want to connect to within the MySQL server.
$databaseName = "bmi";

//Establishing the connection between php and your database
$conn = new mysqli($serverName, $user, $pass, $databaseName);

//Checking the connection if its successfully established or not
if ($conn->connect_error) {
    die("Connection Failed: ".$conn->connect_error);
}
echo "Connection Established!";
?>

<?php 
   
//PASSING THE DATA FROM HTML TO PHP AND STORE IT IN VARIABLES
if (isset($_POST['submit'])) {
   
    $fname = $_POST['fname'];
    $age = $_POST['age'];
    $addr = $_POST['addr'];
    $contact = $_POST['contact'];
    $bday = $_POST['bday'];
    $gender = $_POST['gender'];
    $bloodtype = $_POST['bloodtype'];
    $heightmetric = $_POST['heightmetric'];
    $weightmetric = $_POST['weightmetric'];
    $heightimperial = $_POST['heightimperial'];
    $weightimperial = $_POST['weightimperial'];

    // Calculate BMI results
    $bmimetricresult = ($weightmetric / ($heightmetric * $heightmetric));
    $bmimetricresult = number_format($bmimetricresult, 2);

    $bmiimperialresult = $weightimperial / ($heightimperial * $heightimperial) * 703;
    $bmiimperialresult = number_format($bmiimperialresult, 3);

    //INSERT DATA TO DATABASE
    $sql = "INSERT INTO `bmiactivity` (`name`, `age`, `address`, `contactnumber`, `birthdate`, `gender`, `bloodtype`, `heightmetric`, `weightmetric`, `bmiresultmetric`, `heightimperial`, `weightimperial`, `bmiresultimperial`) VALUES ('$fname', '$age', '$addr', '$contact', '$bday', '$gender', '$bloodtype', '$heightmetric', '$weightmetric', '$bmimetricresult', '$heightimperial', '$weightimperial', '$bmiimperialresult')";

    $result = $conn->query($sql);

    if ($result === TRUE) {
        echo "New record created successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    } 
    $conn->close(); 
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h2>Student Profile</h2>
    <form action="" method="POST">
        <fieldset>
            <legend>Student Information:</legend>
            name:<br>
            <input type="text" name="fname"><br>
            Age:<br>
            <input type="number" name="age"><br>
            Address:<br>
            <input type="text" name="addr"><br>
            Contact Number:<br>
            <input type="tel" name="contact"><br>
            Birthdate:<br>
            <input type="text" name="bday"><br>
            Gender:<br>
            <input type="text" name="gender"><br>
            Bloodtype:<br>
            <input type="text" name="bloodtype"><br>
            Height Metric(m):<br>
            <input type="text" name="heightmetric"><br>
            Weight Metric(kg):<br>
            <input type="text" name="weightmetric"><br>
            Height Imperial(in):<br>
            <input type="text" name="heightimperial"><br>
            Weight Imperial(lbs):<br>
            <input type="text" name="weightimperial"><br>
            <input type="submit" name="submit" value="submit">
        </fieldset>
    </form>
</body>
</html>
