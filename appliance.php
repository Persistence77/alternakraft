<?php
$title = 'Index';

require_once 'lib/header.php';
require_once 'db/conn.php';

// $results = $crud->getSpecialties();

?>

<h1>Choose Appliance Type</h1>

<div class="navbar-nav">
    <a class="nav-link active" aria-current="page" href="airhandler.php">Add Air Handler</a>
    <br/>
    <a class="nav-link active" aria-current="page" href="waterheater.php">Add Water Heater</a>

</div>

<br />
<br />
<?php require_once 'lib/footer.php'; ?>
