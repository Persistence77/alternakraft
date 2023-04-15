<?php
$title = 'Household Averages by Radius Rearch Result';

require_once 'lib/header.php';

require_once 'db/conn.php';

if (isset($_POST['submit']) && isset($_POST['option'])) {
    $hsearch = $_POST['hsearch'];
    $selected_radius = intval($_POST['option']);
    $result1 = $crud->getHouseholdWithinSearchArea($hsearch, $selected_radius);
    $result2 = $crud->getHouseholdType($hsearch, $selected_radius);
    $result3 = $crud->getPublicUtility($hsearch, $selected_radius);
    $result4 = $crud->getHouseholdWithPowerGeneration($hsearch, $selected_radius);
    $result5 = $crud->getGenerationMethod($hsearch, $selected_radius);
    $result6 = $crud->getGenerationCapacityStorage($hsearch, $selected_radius);
    };
    //else
    //{include 'includes/errormessage.php';}
?>
<h1>Search Results</h1>
<br/>
<h2>Household Within Search Area</h2>
<table class="table">
<tr>
        <th>Postal Code</th>
        <th>Search Radius</th>       
</tr>
<tr>
        <td><?php echo $hsearch; ?></td>
        <td><?php echo $selected_radius; ?></td>
</tr>
</table>

<table class="table">
<tr>
        <th>Count of Household</th>
        <th>Count of off-the-grid Household</th>
        <th>AVG Square Footage</th>
        <th>AVG Heating Setting</th>
        <th>AVG Cooling Setting</th>
</tr>
<tr>
        <td><?php echo $result1['count_household']; ?></td>
        <td><?php echo $result1['count_off_grid_household']; ?></td>
        <td><?php echo $result1['square_footage']; ?></td>
        <td><?php echo $result1['heating_setting']; ?></td>
        <td><?php echo $result1['cooling_setting']; ?></td>
</tr>
</table>
<br/>

<h2>Household Type Detail</h2>
<table class="table">
<tr>
        <th>Householde Type</th>
        <th>Count</th>
</tr>
<tr>
<td><?php echo $result2['household_type']; ?></td>
<td><?php echo $result2['count_each_type']; ?></td>
</tr>
</table>
<br/>

<table class="table">
<tr>
        <th>Public Utility</th>
</tr>

<tr>
<td><?php echo $result3['utility_type']; ?></td>
</tr>
</table>

<br/>
<table class="table">
<tr>
        <th>Count of Homes With Power Generation</th>
</tr>
<tr>
<td><?php echo $result4['count_homes_with_power_generation']; ?></td>
</tr>
</table>

<br/>
<h2>Power Generation Detail</h2>
<table class="table">
<tr>
        <th>Generator Type</th>
        <th>Count</th>
</tr>
<tr>
<td><?php echo $result5['generator_type']; ?></td>
<td><?php echo $result5['count_most']; ?></td>
</tr>

</table>

<table class="table">
<tr>
        <th>AVG Monthly kWh</th>
        <th>Count of Households with Battery Storage</th>
</tr>
<tr>
<td><?php echo $result6['avg_monthly_kWh']; ?></td>
<td><?php echo $result6['count_household_has_battery_storage']; ?></td>
</tr>

</table>

<br />
<br />
<?php require_once './lib/footer.php'; ?>
