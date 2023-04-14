<?php
session_start();
$title = 'Household';

require_once 'lib/header.php';
require_once 'db/conn.php';

// echo "Hello World!";

// $results = $crud->getSpecialties();
if (isset($_POST['submit'])) {
  //extract values from the $_POST array
  $email= $_POST['email'];
  $_SESSION['email']=$email;

  $postal_code = $_POST['postal_code'];
  $square_footage = $_POST['square_footage'];
  $household_type = $_POST['household_type'];
  $heating_setting = $_POST['heating_setting'];
  $cooling_setting = $_POST['cooling_setting'];
  $utility_type = $_POST['utility'];


  $checklocation=$crud->checkPostalCode($postal_code);


  if(!$checklocation){
    echo "Postal Code is not correct";

  } else {
    $isSuccess=$crud->insertHouseholds($_SESSION['email'],$postal_code,$square_footage,$household_type,$heating_setting,$cooling_setting);
    $crud->insertUtility($_SESSION['email'],$utility_type);
    header("Location: appliance.php");


    if($isSuccess){
      include 'lib/successmessage.php';
    } else {
      include 'lib/errormessage.php';
    }

  }




}

?>
<h1>Enter household info</h1>
<form action="household.php" class="form" method="post">

  <div class="mb-3">
    <label for="email" class="form-label">Pleasse enter your email address:</label>
    <input type="email" name="email" id="email" required class="form-control" />
  </div>
  <div class="mb-3">
    <label for="postal_code" class="form-label">Please enter your five digit postal code:</label>
    <input type="text" name="postal_code" maxlength="5" pattern="[0-9]{5}" id="postal_code" required class="form-control" />
  </div>
  <div class="mb-3">
    <label for="househod_type" class="form-label">Home Type: </label>
    <select type="text" name="household_type" id="household_type" required class="form-control">
      <option value="House">House</option>
      <option value="apartment">apartment</option>
      <option value="townhouse">townhouse</option>
      <option value="condominium">condominium</option>
      <option value="mobile home">mobile home</option>
    </select>
  </div>
  <div class="mb-3">
    <label for="square_footage" class="form-label">Square footage:</label>
    <input type="number" name="square_footage" min="1" max="100000" id="square_footage" required class="form-control" />
  </div>

  <div class="mb-3">
  <label for="heating_setting" class="form-label">Thermostat setting for heating:</label>
    <div class="input-group">
        <input type="number" name="heating_setting" min="70" max="90" id="heating_setting" class="form-control" value="72" />
        <div class="input-group-append">
            <div class="input-group-text">
              <label><input type="checkbox" name="no_heating" id="no_heating" value="1">No Heating</label>
            </div>
        </div>
          <script>
          const heatingSettingInput = document.getElementById("heating_setting");
          const noHeatingCheckbox = document.getElementById("no_heating");
          noHeatingCheckbox.addEventListener("change", function() {
            heatingSettingInput.disabled = noHeatingCheckbox.checked;
          });
      </script>
    </div>
  </div>

  <div class="mb-3">
  <label for="cooling_setting" class="form-label">Thermostat setting for cooling:</label>
    <div class="input-group">
        <input type="number" name="cooling_setting" min="60" max="75" id="cooling_setting" class="form-control" value="68" />
        <div class="input-group-append">
            <div class="input-group-text">
            <label><input type="checkbox" name="no_cooling" id="no_cooling" value="1">No Cooling</label>
            </div>
        </div>
          <script>
          const coolingSettingInput = document.getElementById("cooling_setting");
          const noCoolingCheckbox = document.getElementById("no_cooling");
          noCoolingCheckbox.addEventListener("change", function() {
            coolingSettingInput.disabled = noCoolingCheckbox.checked;
          });
      </script>
    </div>
  </div>

    <div class="mb-3">
        <label>Public Utilities: </label>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="utility[]" id="utility1" value="Electric">
            <label class="form-check-label ml-2" for="utility1">
                Electric
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="utility[]" id="utility2" value="Gas">
            <label class="form-check-label ml-2" for="utility2">
                Gas
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="utility[]" id="utility3" value="Steam">
            <label class="form-check-label ml-2" for="utility3">
                Steam
            </label>
        </div>
        <div class="form-check">
            <input class="form-check-input" type="checkbox" name="utility[]" id="utility4" value="Fuel Oil">
            <label class="form-check-label ml-2" for="utility4">
                Fuel Oil
            </label>
        </div>
    </div>


  <div class="">
  <button type="submit" class="btn btn-primary btn-block" name="submit">Next</button>
  </div>


</form>
<!-- <?php //include("lib/error.php"); ?> -->


<br />
<br />
<?php require_once 'lib/footer.php'; ?>