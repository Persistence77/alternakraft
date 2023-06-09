<?php
$title = 'Water Heater Statistics by State';

require_once 'lib/header.php';

require_once 'db/conn.php';

$results = $crud->getwaterheaterstatistics();
// print_r($results);
?>
<h1>Water Heater Statistic by State</h1>
<br />
<table class="table">
<tr>
        <th>State</th>
        <th>Average Capacity</th>
        <th>Average BTU Rating</th>
        <th>Average Temperature Setting</th>
        <th>Count with Temperature Setting</th>
        <th>Count without Temperature Setting</th>
</tr>
<?php
        while ($r = $results->fetch(PDO::FETCH_ASSOC)) { ?>
    <tr>
        <td>
            <a href="waterheaterstatedetail.php?state=<?php $state = $r['State'];
            echo str_replace(' ', '', $state); ?>" class="nav-link active"><?php echo $r['State']; ?></a>
        </td>
        <td><?php echo $r['AverageCapacity']; ?></td>
        <td><?php echo $r['AverageBTUs']; ?></td>
        <td><?php echo $r['AverageTemperatureSetting']; ?></td>
        <td><?php echo $r['CountwithTemperatureSetting']; ?></td>
        <td><?php echo $r['CountwithoutTemperatureSetting']; ?></td>



        <!-- <td>
            <a href="view.php?id=<?php //echo $r['attendee_id']; ?>" class="btn btn-primary">View</a>
            <a href="edit.php?id=<?php //echo $r['attendee_id']; ?>" class="btn btn-warning">Edit</a>
            <a onclick="return confirm('Are you sure you want to delete this record?')"
             href="delete.php?id=<?php //echo $r['attendee_id']; ?>" class="btn btn-danger">Delete</a>


        </td> -->
    </tr>
<?php } ?>

</table>


<br />
<br />
<?php require_once './lib/footer.php'; ?>
