<?php
$title = 'View Reports';

require_once 'lib/header.php';
require_once 'db/conn.php';

// $results = $crud->getAttendees();

?>
<h1>View reports</h1>
<br/>
<div class="navbar-nav">
    <a class="nav-link" href="top25manufacturers.php">Top 25 popular manufacturers</a>
    <a class="nav-link" href="manufacturer_model_search.php">Manufacturer/model search</a>
    <a class="nav-link" href="heating_cooling_method_details.php">Heating/cooling method details</a>
    <a class="nav-link" href="waterheaterstatisticsbystate.php">Water heater statistics by state</a>
    <a class="nav-link" href="offthegridhouseholddashboard.php">Off-the-grid household dashboard</a>
    <a class="nav-link" href="householdaveragesbyradius.php">Household averages by radius</a>
    <!-- <a class="nav-link" href="viewreports.php">View reports/query data</a> -->

</div>

<br />
<br />
<?php require_once 'lib/footer.php'; ?>
