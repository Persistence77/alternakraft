<?php
$title = 'Manufacturer/Model Search';

require_once 'lib/header.php';

require_once 'db/conn.php';


?>
<h1>Manufacturer/Model Search</h1>
<form action="manufacturer_model_search_result.php"  class="form" method="post">
<div class="mb-3">
    <label for="msearch" class="form-label">Enter keyword to search: </label>
    <input type="text" name="msearch" id="msearch" required class="form-control" />
  </div>
  <div class="">
  <button type="submit" class="btn btn-primary btn-block" name="submit">Search</button>
  </div>
</form>

<br />
<br />
<?php require_once './lib/footer.php'; ?>