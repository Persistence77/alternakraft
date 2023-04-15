<?php
$title = 'Household Averages by Radius';

require_once 'lib/header.php';

require_once 'db/conn.php';


?>
<h1>Household Search</h1>
<form action="householdaveragebyradiusresult.php"  class="form" method="post">
<div class="mb-3">
    <label for="hsearch" class="form-label">Enter Postal Code to Search: </label>
    <input type="text" name="hsearch" id="hsearch" required class="form-control" />
  </div>
  <p>Please Choose a Radius in mile:</p>
  <div style="display: flex; flex-wrap: wrap;">
  <?php
    $options = array(0, 5, 10, 25, 50, 100, 250);
    foreach ($options as $option) {
      echo '<label style="margin-right: 30px;"><input type="radio" name="option" value="' . $option . '"> ' . $option . '</label>';
    }
  ?>
  </div>

  <div class="">
  <button type="submit" class="btn btn-primary btn-block" name="submit">Search</button>
  </div>

</form>

<br />
<br />
<?php require_once './lib/footer.php'; ?>
