<?php
$title = 'View State Detail';

require_once 'lib/header.php';

require_once 'db/conn.php';

if (!isset($_GET['state'])) {
    include 'includes/errormessage.php';

} else {
    $state = $_GET['state'];
    // echo $state;
    $result1 = $crud->getStateEnergysource($state);
    $result2 = $crud->getStateMinimumCapacity($state);
    $result3 = $crud->getStateAverageCapacity($state);
    $result4 = $crud->getStateMaximumCapacity($state);
    $result5 = $crud->getStateMinimumTempSetting($state);
    $result6 = $crud->getStateAverageTempSetting($state);
    $result7 = $crud->getStateMaximumTempSetting($state);

    if(!$result1) {$result1[0]= "0";}
    if(!$result2) {$result2[0]= "0";}
    if(!$result3) {$result3[0]= "0";}
    if(!$result4) {$result4[0]= "0";}
    if(!$result5) {$result5[0]= "0";}
    if(!$result6) {$result6[0]= "0";}
    if(!$result7) {$result7[0]= "0";};
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

        <td><?php echo $result1[0]; ?></td>
        <td><?php echo $result2[0]; ?></td>
        <td><?php echo $result3[0]; ?></td>
        <td><?php echo $result4[0]; ?></td>
        <td><?php echo $result5[0]; ?></td>
        <td><?php echo $result6[0]; ?></td>
        <td><?php echo $result7[0]; ?></td>


</table>
<?php } ?>
<br />
<br />
<?php require_once './lib/footer.php'; ?>
