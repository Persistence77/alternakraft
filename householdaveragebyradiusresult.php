<?php
$title = 'Household Averages by Radius Rearch Result';

require_once 'lib/header.php';

require_once 'db/conn.php';

if (isset($_POST['submit'])) {
    $hsearch= $_POST['hsearch'];
    $results=$crud->getManufacturerModelSearch($msearch);
    $results=$crud->getManufacturerModelSearch($msearch);
    $results=$crud->getManufacturerModelSearch($msearch);
    $results=$crud->getManufacturerModelSearch($msearch);
    $results=$crud->getManufacturerModelSearch($msearch);
    
};

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
        ><?php
        if($r['manufacturer_name']==null) { echo "None";}
        else {
            echo $r['manufacturer_name'];
        };
         ?></td>
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