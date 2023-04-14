<?php
$title = 'View Manufacturer Detail';

require_once 'lib/header.php';

require_once 'db/conn.php';

if (!isset($_GET['name'])) {
    include 'includes/errormessage.php';

} else {
    $name = $_GET['name'];
    // echo $name;
    $result1 = $crud->getManufacturerACDetail($name);
    $result2 = $crud->getManufacturerWHDetail($name);

    if(!$result1) {$result1[0]= "0";}
    if(!$result2) {$result2[0]= "0";};
?>
<table class="table">
    <h2><?php echo $name; ?></h2>
<tr>
        <th>Air Conditioner Count</th>
        <th>Water Heater Count</th>
</tr>
<tr>


        <td><?php echo $result1[0]; ?></td>


        <td><?php echo $result2[0]; ?></td>

</table>
<?php } ?>
<br />
<br />
<?php require_once './lib/footer.php'; ?>