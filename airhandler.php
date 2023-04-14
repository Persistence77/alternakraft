<?php
session_start();
$title = 'Appliance';

require_once 'lib/header.php';
require_once 'db/conn.php';

if (isset($_POST['submit'])) {

  // Get the email from the previous page
  // $email = $_SESSION["email"];
  $manufacturer_name = $_POST["manufacturer_name"];
  $model_name = $_POST["model_name"];
  $BTU_rating = $_POST["BTU_rating"];
  $appliance_num=$crud->getNum();
  echo "Hello first";

  $crud->insertappliance($_SESSION['email'],$manufacturer_name,$model_name,$BTU_rating,$appliance_num);
 echo "Hello1";

  // Check which radio button is selected
  if ($_POST["air_hander_type"] == "air_conditioner") {
    // Get the EER value and insert into the AirConditioner table
    $eer = $_POST["eer"];
    $crud->insertairconditioner($_SESSION['email'],$eer,$appliance_num);
    echo "Hello2";

  } elseif ($_POST["air_hander_type"] == "heater") {
    // Get the heater type value and insert into the Heater table
    $energy_source = $_POST["energy_source"];
    $crud->insertheater($_SESSION['email'],$energy_source,$appliance_num);
    echo "Hello3";

  } elseif ($_POST["air_hander_type"] == "heat_pump") {
    // Get the SEER and HSPF values and insert into the HeatPump table
    $seer = $_POST["seer"];
    $hspf = $_POST["hspf"];
    $crud->insertheatpump($_SESSION['email'],$seer,$hspf,$appliance_num);
    echo "Hell4";

  }

  // header("Location: appliancelist.php");
}

$results = $crud->getManufacturers();

?>

<h1>Add Appliance</h1>
<h2>Please provide the air handler details for the appliance.</h2>
<form action="airhandler.php" class="form" method="post">

    <div class="mb-3">
        <label for="household_type" class="form-label">Appliance Type: </label>
        <select type="text" name="household_type" id="household_type" required class="form-control" >
            <option selected="true" disabled="disabled" value="Air handler"  >Air handler</option>
        </select>
    </div>

 <div class="mb-3">
        <label for="manufacturer_name" class="form-label">Manufacturer:</label>
        <select class="form-select" id="manufacturer_name" name="manufacturer_name">
            <?php while($r = $results->fetch(PDO::FETCH_ASSOC)) { ?>
                <option value="<?php echo $r['manufacturer_name']; ?>"><?php echo $r['manufacturer_name']; ?></option>
            <?php } ?>
        </select>
    </div>

    <div class="mb-3">
    <div class="form-check">
    <input class="form-check-input" type="radio" name="air_hander_type" id="air_conditioner" value="air_conditioner">
        <label class="form-check-label ml-2" for="air_conditioner">
            Air Conditioner
        </label>
    </div>
    <div class="form-group" id="eer_input" style="display:none;">
        <label for="eer">EER:</label>
        <input type="text" class="form-control" id="eer" name="eer">
    </div>

    <div class="form-check">
    <input class="form-check-input" type="radio" name="air_hander_type" id="heater" value="heater">
        <label class="form-check-label ml-2" for="heater">
            Heater
        </label>
    </div>
    <div class="form-group" id="heater_dropdown" style="display:none;">
        <label for="energy_source">Energy Source:</label>
        <select class="form-control" id="energy_source" name="energy_source">
            <option value="electric">Electric</option>
            <option value="gas">Gas</option>
            <option value="fuel_oil">Fuel Oil</option>
        </select>
    </div>

    <div class="form-check">
    <input class="form-check-input" type="radio" name="air_hander_type" id="heat_pump" value="heat_pump">
        <label class="form-check-label ml-2" for="heat_pump">
            Heat Pump
        </label>
    </div>
    <div class="form-group" id="seer_hspf_input" style="display:none;">
        <label for="seer">SEER:</label>
        <input type="text" class="form-control" id="seer" name="seer">
        <br>
        <label for="hspf">HSPF:</label>
        <input type="text" class="form-control" id="hspf" name="hspf">
    </div>
</div>
<script>
// Get references to the radio buttons and input elements
const airConditionerRadio = document.querySelector('#air_conditioner');
const eerInput = document.querySelector('#eer_input');
const heaterRadio = document.querySelector('#heater');
const heaterDropdown = document.querySelector('#heater_dropdown');
const heatPumpRadio = document.querySelector('#heat_pump');
const seerInput = document.querySelector('#seer');
const hspfInput = document.querySelector('#hspf');
const seerHspfInput = document.querySelector('#seer_hspf_input');

// Add event listeners to each radio button
airConditionerRadio.addEventListener('change', function() {
  if (this.checked) {
    eerInput.style.display = 'block';
    heaterDropdown.style.display = 'none';
    seerHspfInput.style.display = 'none';
  }
});

heaterRadio.addEventListener('change', function() {
  if (this.checked) {
    heaterDropdown.style.display = 'block';
    eerInput.style.display = 'none';
    seerHspfInput.style.display = 'none';
  }
});

heatPumpRadio.addEventListener('change', function() {
  if (this.checked) {
    seerHspfInput.style.display = 'block';
    eerInput.style.display = 'none';
    heaterDropdown.style.display = 'none';
  }
});



</script>


  <!-- <div class="mb-3">
      <div class="form-check">
      <input class="form-check-input" type="radio" name="air_hander_type" id="air_conditioner" value="air_conditioner">
      <label class="form-check-label ml-2" for="air_conditioner">
        Air Conditioner
      </label>
    </div>
    <div class="form-group" id="eer_input" style="display: none;">
      <label for="eer">Energy efficiency ratio (EER):</label>
      <input type="number" step="0.1" class="form-control" id="eer" name="eer" pattern="\d+(\.\d{1})?" required>
    </div>
 <div class="form-check">
<input class="form-check-input" type="radio" name="air_hander_type" id="heater" value="heater">
  <label class="form-check-label ml-2" for="heater">
    Heater
  </label>
</div>
<div class="form-group" id="heater_dropdown" style="display: none;">
  <label for="energy_source">Energy Source</label>
  <select class="form-control" id="energy_source" name="energy_source" required>
    <option value="">Select a type</option>
    <option value="Electric">Electric</option>
    <option value="Gas">Gas</option>
    <option value="Fuel Oil">Fuel Oil</option>
  </select>
</div>
<div class="form-check">
  <input class="form-check-input" type="radio" name="air_hander_type" id="heat_pump" value="heat_pump">
  <label class="form-check-label ml-2" for="heat_pump">
    Heat Pump
  </label>
</div>
<div class="form-group" id="seer_hspf_input" style="display: none;">
  <label for="seer">Seasonal energy efficiency rating (SEER):</label>
  <input type="number" step="0.1" class="form-control" id="seer" name="seer" pattern="\d+(\.\d{1})?" required>
  <label for="hspf">Heating seasonal performance factor (HSPF):</label>
  <input type="number" step="0.1" class="form-control" id="hspf" name="hspf" pattern="\d+(\.\d{1})?" required>
</div>
<script>
// Get references to the radio buttons and input elements
const airConditionerRadio = document.querySelector('#air_conditioner');
const eerInput = document.querySelector('#eer_input');
const heaterRadio = document.querySelector('#heater');
const heaterDropdown = document.querySelector('#heater_dropdown');
const heatPumpRadio = document.querySelector('#heat_pump');
const seerInput = document.querySelector('#seer');
const hspfInput = document.querySelector('#hspf');
const seerHspfInput = document.querySelector('#seer_hspf_input');
// Add event listeners to each radio button
airConditionerRadio.addEventListener('change', function() {
  if (this.checked) {
    eerInput.style.display = 'block';
    heaterDropdown.style.display = 'none';
    seerHspfInput.style.display = 'none';
  }
});
heaterRadio.addEventListener('change', function() {
  if (this.checked) {
    heaterDropdown.style.display = 'block';
    eerInput.style.display = 'none';
    seerHspfInput.style.display = 'none';
  }
});
heatPumpRadio.addEventListener('change', function() {
  if (this.checked) {
    seerHspfInput.style.display = 'block';
    eerInput.style.display = 'none';
    heaterDropdown.style.display = 'none';
  }
});
</script>
</div> -->

    <div class="mb-3">
        <label for="model_name" class="form-label">Model Name:</label>
        <input type="text" name="model_name" id="model_name" class="form-control"  />
    </div>

    <div class="mb-3">
        <label for="BTU_rating" class="form-label">BTU Rating:</label>
        <input type="number" name="BTU_rating" id="BTU_rating" class="form-control" value="1540" />
    </div>

    <div class="">
        <button type="submit" class="btn btn-primary btn-block" name="submit">Add</button>
    </div>


</form>


<br />
<br />
<?php require_once 'lib/footer.php'; ?>