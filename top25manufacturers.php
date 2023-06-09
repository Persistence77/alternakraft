<?php
$title = 'Top 25 Manufacturers';

require_once 'lib/header.php';

require_once 'db/conn.php';

$results = $crud->getTop25Manufacturers();
// print_r($results);
?>
<table class="table">
<tr>
        <th>Manufacturer Name</th>
        <th>Appliance Count</th>
</tr>
<?php
        while ($r = $results->fetch(PDO::FETCH_ASSOC)) { ?>
    <tr>
        <td>
            <a href="manufacturerdetail.php?name=<?php $mname = $r['manufacturer_name'];
            echo str_replace(' ', '', $mname); ?>" class="nav-link active"><?php echo $r['manufacturer_name']; ?></a>
        </td>
        <td><?php echo $r['appliance_count']; ?></td>



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