<?php
$title = 'Manufacturer/Model Search Result';

require_once 'lib/header.php';

require_once 'db/conn.php';

if (isset($_POST['submit'])) {
    $msearch= $_POST['msearch'];
    // print_r($msearch);
    $results=$crud->getManufacturerModelSearch($msearch);
    // print_r($results);}
    // if($isSuccess) {
    //     // echo '<h1 class="text-center text-success">You Have Been Registered!</h1>';
    // include 'lib/successmessage.php';

    // } else {
    //     // echo '<h1 class="text-center text-danger">There was an error in processing!</h1>';
    // include 'lib/errormessage.php';

    // }
};

// style= "background-color:lightgreen;"
?>
<h2>Here your search result:</h2>
<table class="table">
<tr>
        <th>Manufacturer Name</th>
        <th>Model Name</th>
</tr>
<?php
        while ($r = $results->fetch(PDO::FETCH_ASSOC)) { ?>

            <tr>
        <td
       <?php $pos1 = stripos(strtolower($r['manufacturer_name']), $msearch);
        if($pos1 !== false) {
            echo "style= 'background-color:lightgreen;'";
        };
       ?>
        ><?php echo $r['manufacturer_name']; ?></td>
        <td
        <?php $pos2 = stripos(strtolower($r['model_name']), $msearch);
        if($pos2 !== false) {
            echo "style= 'background-color:lightgreen;'";
        };
        ?>
        ><?php echo $r['model_name']; ?></td>
        </tr>
<?php } ?>
</table>
<br />
<br />
<?php require_once './lib/footer.php'; ?>
