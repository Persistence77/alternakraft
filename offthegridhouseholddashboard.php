<?php
$title = 'Off the Grid Household Dashboard';

require_once 'lib/header.php';

require_once 'db/conn.php';

$result1 = $crud->getsStateWithMostoffCount();
$result2 = $crud->getAverageBatterykWhforoff();
$result3 = $crud->getPercentagePowerGenerationType();
$result4 = $crud->getWaterHeaterCapacity();
$result5 = $crud->getBUTsforoffthegrid();
?>
<h2>State with Most off-the-grid Household</h2>
<table class="table">
<tr>
        <th>State</th>
        <th>Count of off-the-grid Household</th>
</tr>
<?php
        while ($r1 = $result1->fetch(PDO::FETCH_ASSOC)) { ?>
<tr>
<td><?php echo $r1['state']; ?></td>
<td><?php echo $r1['count_off_grid']; ?></td>
</tr>
<?php } ?>
</table>
<br/>

<h2>Battery Information for off-the-grid Household</h2>
<table class="table">
<tr>
        <th>Average Battery Capacity</th>
</tr>
<?php
        while ($r2 = $result2->fetch(PDO::FETCH_ASSOC)) { ?>
<tr>
<td><?php echo $r2['avg_battery_capacity']; ?></td>
</tr>
<?php } ?>
</table>

<table class="table">
<tr>
        <th>Power Generation Type</th>
        <th>Percentage</th>
</tr>
<?php
        while ($r3 = $result3->fetch(PDO::FETCH_ASSOC)) { ?>
<tr>
<td><?php echo $r3['generator_type']; ?></td>
<td><?php echo $r3['percentage']; ?></td>
</tr>
<?php } ?>
</table>

<br/>
<h2>Average Water Heater Capacity</h2>
<table class="table">
<tr>
        <th>off-the-grid Household</th>
        <th>on-the-grid Household</th>
</tr>
<?php
        while ($r4 = $result4->fetch(PDO::FETCH_ASSOC)) { ?>
<tr>
<td><?php echo $r4['avg_capacity_off_grid']; ?></td>
<td><?php echo $r4['avg_capacity_on_grid']; ?></td>
</tr>
<?php } ?>
</table>

<br/>
<h2>BTUs for off-the-grid Households' Appliance</h2>
<table class="table">
<tr>
        <th>Minimum BTU rating</th>
        <th>Average BTU rating</th>
        <th>Maximum BTU rating</th>
</tr>
<?php
        while ($r5 = $result5->fetch(PDO::FETCH_ASSOC)) { ?>
<tr>
<td><?php echo $r5['min_BTU_rating']; ?></td>
<td><?php echo $r5['avg_BTU_rating']; ?></td>
<td><?php echo $r5['max_BTU_rating']; ?></td>
</tr>
<?php } ?>

</table>

<br />
<br />
<?php require_once './lib/footer.php'; ?>
