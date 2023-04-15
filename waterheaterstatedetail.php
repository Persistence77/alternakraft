<?php
$title = 'View State Detail';

require_once 'lib/header.php';

require_once 'db/conn.php';

if (!isset($_GET['state'])) {
    include 'includes/errormessage.php';

} else {
    $state = $_GET['state'];
    // echo $state;
    $result = $crud->getStateWaterHeaterDetail($state);

    if(!$result['energy_source']) {$result['energy_source']= "0";}
    if(!$result['Minimum_Capacity']) {$result['Minimum_Capacity']= "0";}
    if(!$result['Average_Capacity']) {$result['Average_Capacity']= "0";}
    if(!$result['Maximum_Capacity']) {$result['Maximum_Capacity']= "0";}
    if(!$result['Minimum_Temperature_Setting']) {$result['Minimum_Temperature_Setting']= "0";}
    if(!$result['Average_Temperature_Setting']) {$result['Average_Temperature_Setting']= "0";}
    if(!$result['Maximum_Temperature_Setting']) {$result['Maximum_Temperature_Setting']= "0";}
?>
<table class="table">
    
<h2><?php echo $state; ?> State Water Heater Detail</h2>
<tr>
        <th>Energy Source</th>
        <th>Minimum Capacity</th>
        <th>Average Capacity</th>
        <th>Maximum Capacity</th>
        <th>Minimum Temperature Setting</th>
        <th>Average Temperature Setting</th>
        <th>Maximum Temperature Setting</th>
</tr>
<tr>

        <td><?php echo $result['energy_source']; ?></td>
        <td><?php echo $result['Minimum_Capacity']; ?></td>
        <td><?php echo $result['Average_Capacity']; ?></td>
        <td><?php echo $result['Maximum_Capacity']; ?></td>
        <td><?php echo $result['Minimum_Temperature_Setting']; ?></td>
        <td><?php echo $result['Average_Temperature_Setting']; ?></td>
        <td><?php echo $result['Maximum_Temperature_Setting']; ?></td>


</table>
<?php } ?>
<br />
<br />
<?php require_once './lib/footer.php'; ?>
