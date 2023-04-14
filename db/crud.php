<?php
class crud
{
    //private database object
    private $db;

    //constructor to initialize private variable to the databasse connection
    function __construct($conn)
    {
        $this->db = $conn;
    }

    public function insertHouseholds($email, $postal_code, $square_footage, $household_type, $heating_setting, $cooling_setting)
    {
        try {

            //define sqql statement to be exxecuted
            $sql = "INSERT INTO household (email,postal_code,square_footage,household_type,heating_setting,cooling_setting) VALUES (:email,:postal_code,:square_footage,:household_type,:heating_setting,:cooling_setting)";
            //prepare the sql statement for execution
            $stmt = $this->db->prepare($sql);
            //bind all placeholders to the actual values
            $stmt->bindparam(':email', $email);
            $stmt->bindparam(':postal_code', $postal_code);
            $stmt->bindparam(':square_footage', $square_footage);
            $stmt->bindparam(':household_type', $household_type);
            $stmt->bindparam(':heating_setting', $heating_setting);
            $stmt->bindparam(':cooling_setting', $cooling_setting);
            $stmt->execute();

            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function insertUtility($email, $utility_type)
{
    try {

        foreach($utility_type as $util){

        //define sqql statement to be executed
        $sql = "INSERT INTO publicutility (email,utility_type) VALUES (:email,:utility)";
        //prepare the sql statement for execution
        $stmt = $this->db->prepare($sql);
        //bind all placeholders to the actual values
        $stmt->bindparam(':email', $email);
        $stmt->bindparam(':utility', $util);
        $stmt->execute();

        }

        return true;


    } catch (PDOException $e) {
        echo $e->getMessage();
        return false;
    }
}

public function checkPostalCode($postal_code)
{
    $sql = "SELECT COUNT(*) FROM location WHERE postal_code = :postal_code";
    $stmt = $this->db->prepare($sql);
    $stmt->bindParam(':postal_code', $postal_code);
    $stmt->execute();
    $count = $stmt->fetchColumn();
    return $count > 0;
}

public function insertappliance($email, $manufacturer_name, $model_name, $BTU_rating, $appliance_num)
    {
        try {

            //define sqql statement to be exxecuted
            $sql = "INSERT INTO appliance (email, manufacturer_name, model_name, BTU_rating, appliance_num)
            VALUES (:email, :manufacturer_name, :model_name, :BTU_rating, :appliance_num)";
            //prepare the sql statement for execution
            $stmt = $this->db->prepare($sql);
            //bind all placeholders to the actual values
            $stmt->bindparam(':email', $email);
            $stmt->bindparam(':manufacturer_name', $manufacturer_name);
            $stmt->bindparam(':model_name', $model_name);
            $stmt->bindparam(':BTU_rating', $BTU_rating);
            $stmt->bindparam(':appliance_num', $appliance_num);
            $stmt->execute();

            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    public function insertairconditioner($email, $eer, $appliance_num)
    {
        try {

            //define sqql statement to be exxecuted
            $sql = "INSERT INTO airconditioner (email, EER, appliance_num) VALUES (:email, :eer, :appliance_num)";
            //prepare the sql statement for execution
            $stmt = $this->db->prepare($sql);
            //bind all placeholders to the actual values
            $stmt->bindparam(':email', $email);
            $stmt->bindparam(':eer', $eer);
            $stmt->bindparam(':appliance_num', $appliance_num);
            $stmt->execute();

            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    public function insertheater($email, $energy_source, $appliance_num)
    {
        try {

            //define sqql statement to be exxecuted
            $sql =  "INSERT INTO heater (email, energy_source, appliance_num) VALUES (:email, :energy_source, :appliance_num)";
            //prepare the sql statement for execution
            $stmt = $this->db->prepare($sql);
            //bind all placeholders to the actual values
            $stmt->bindparam(':email', $email);
            $stmt->bindparam(':energy_source', $energy_source);
            $stmt->bindparam(':appliance_num', $appliance_num);
            $stmt->execute();

            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function insertheatpump($email, $seer,$hspf, $appliance_num)
    {
        try {

            //define sqql statement to be exxecuted
            $sql =  "INSERT INTO heatpump (email, SEER, HSPF, appliance_num) VALUES (:email, :seer, :hspf,:appliance_num)";
            //prepare the sql statement for execution
            $stmt = $this->db->prepare($sql);
            //bind all placeholders to the actual values
            $stmt->bindparam(':email', $email);
            $stmt->bindparam(':seer', $seer);
            $stmt->bindparam(':hspf', $hspf);
            $stmt->bindparam(':appliance_num', $appliance_num);
            $stmt->execute();

            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function getNum() {
        $sql = "SELECT MAX(appliance_num) AS max_appliance_num FROM appliance";
        $stmt = $this->db->prepare($sql);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            $row = $stmt->fetch();
            $max_appliance_num = $row["max_appliance_num"]+1;
        } else {
            $max_appliance_num = 1;
        }
        return $max_appliance_num;
    }

    // public function insertAppliance($email, $postal_code, $square_footage, $household_type, $heating_setting, $cooling_setting)
    // {
    //     try {
    //         //define sqql statement to be exxecuted
    //         $sql = "INSERT INTO household (email,postal_code,square_footage,household_type,heating_setting,cooling_setting) VALUES (:email,:postal_code,:square_footage,:household_type,:heating_setting,:cooling_setting)";
    //         //prepare the sql statement for execution
    //         $stmt = $this->db->prepare($sql);
    //         //bind all placeholders to the actual values
    //         $stmt->bindparam(':email', $email);
    //         $stmt->bindparam(':postal_code', $postal_code);
    //         $stmt->bindparam(':square_footage', $square_footage);
    //         $stmt->bindparam(':household_type', $household_type);
    //         $stmt->bindparam(':heating_setting', $heating_setting);
    //         $stmt->bindparam(':cooling_setting', $cooling_setting);

    //         $stmt->execute();
    //         return true;
    //     } catch (PDOException $e) {
    //         echo $e->getMessage();
    //         return false;
    //     }
    // }
    // public function editAttendee($id, $fname, $lname, $dob, $email, $contact, $specialty)
    // {
    //     try {
    //         $sql = "UPDATE `attendee` SET `firstname`=:fname,`lastname`=:lname,`dateofbirth`=:dob,
    //         `emailaddress`=:email,`contactnumber`=:contact,`specialty_id`=:specialty WHERE attendee_id = :id";

    //         $stmt = $this->db->prepare($sql);
    //         //bind all placeholders to the actual values
    //         $stmt->bindparam(':id', $id);
    //         $stmt->bindparam(':fname', $fname);
    //         $stmt->bindparam(':lname', $lname);
    //         $stmt->bindparam(':dob', $dob);
    //         $stmt->bindparam(':email', $email);
    //         $stmt->bindparam(':contact', $contact);
    //         $stmt->bindparam(':specialty', $specialty);

    //         $stmt->execute();
    //         return true;
    //     } catch (PDOException $e) {
    //         echo $e->getMessage();
    //         return false;
    //     }
    // }

    public function getAppliances()
    {
        try {
            $sql = "SELECT * FROM `appliance`;";
            $result = $this->db->query($sql);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    public function getHouseholds()
    {
        try {
            $sql = "SELECT * FROM `household`";
            $result = $this->db->query($sql);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }


    // public function getAttendeeDetail($id)
    // {
    //     try {
    //         $sql = "select * from attendee a inner join specialities s on a.specialty_id = s.specialty_id
    //         where attendee_id = :id";
    //         $stmt = $this->db->prepare($sql);
    //         $stmt->bindparam(':id', $id);
    //         $stmt->execute();
    //         $result = $stmt->fetch();
    //         return $result;
    //     } catch (PDOException $e) {
    //         echo $e->getMessage();
    //         return false;
    //     }
    // }

    public function deleteAppliance($id)
    {
        try {
            $sql = "delete from attendee where attendee_id = :id";
            $stmt = $this->db->prepare($sql);
            $stmt->bindparam(':id', $id);
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function deleteGenerator($id)
    {
        try {
            $sql = "delete from attendee where attendee_id = :id";
            $stmt = $this->db->prepare($sql);
            $stmt->bindparam(':id', $id);
            $stmt->execute();
            return true;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function getManufacturers()
    {
        try {
            $sql = "SELECT distinct manufacturer_name FROM `manufacturer` ;";
            $result = $this->db->query($sql);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    public function getTop25Manufacturers()
    {
        try {
            $sql = "SELECT Manufacturer.manufacturer_name, COUNT(*) AS appliance_count
            FROM Appliance
            INNER JOIN Manufacturer ON Appliance.manufacturer_name = Manufacturer.manufacturer_name
            GROUP BY Manufacturer.manufacturer_name
            ORDER BY appliance_count DESC
            LIMIT 25";
            $result = $this->db->query($sql);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

        public function getManufacturerACDetail($name)
    {
        try {
            $sql = "SELECT COUNT(*) as ACCount
            FROM appliance a
            Inner JOIN manufacturer m on a.manufacturer_name = m.manufacturer_name
            Inner JOIN airconditioner ac on a.appliance_num = ac.appliance_num
            WHERE m.manufacturer_name= :name
            GROUP BY m.manufacturer_name";
            $stmt = $this->db->prepare($sql);
            $stmt->bindparam(':name', $name);
            // print_r($stmt);
            $stmt->execute();
            // print_r($stmt);
            $result = $stmt->fetch();
            // print_r($result);
            // echo $result;
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function getManufacturerWHDetail($name)
    {
        try {
            $sql = "SELECT COUNT(*) as WHCount
            FROM appliance a
            Inner JOIN manufacturer m on a.manufacturer_name = m.manufacturer_name
            Inner JOIN waterheater wh on a.appliance_num = wh.appliance_num
            WHERE m.manufacturer_name= :name
            GROUP BY m.manufacturer_name";
            $stmt = $this->db->prepare($sql);
            $stmt->bindparam(':name', $name);
            $stmt->execute();
            // print_r($stmt);
            $result = $stmt->fetch();
            // print_r($result);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }



    public function getGenerators()
    {
        try {
            $sql = "SELECT distinct manufacturer_name FROM `manufacturer` ;";
            $result = $this->db->query($sql);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function getManufacturerModelSearch($msearch)
    {
        try {
            // print_r($msearch);
            $sql = "SELECT DISTINCT Manufacturer.manufacturer_name, Appliance.model_name
            FROM Manufacturer
            INNER JOIN Appliance ON Manufacturer.manufacturer_name = Appliance.manufacturer_name
            WHERE LOWER(Manufacturer.manufacturer_name) LIKE LOWER(concat('%', :msearch, '%'))
            OR LOWER(Appliance.model_name) LIKE LOWER(concat('%', :msearch, '%'))
            ORDER BY Manufacturer.manufacturer_name ASC, Appliance.model_name ASC;";
            $stmt = $this->db->prepare($sql);
            // print_r($stmt);
            $stmt->bindparam(':msearch', $msearch);
            // print_r($stmt);
            $stmt->execute();
            return $stmt;
            // print_r($stmt);
            // $result = $stmt->fetch();
            // print_r($result);
            // return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    
       
       
    
    //JX
    public function getwaterheaterstatistics()
    {
        try {
            $sql = "SELECT l.state AS State,
            COALESCE(ROUND(AVG(w.capacity)), 0) AS AverageCapacity,
            COALESCE(ROUND(AVG(a.BTU_rating)), 0) AS AverageBTUs,
            COALESCE(ROUND(AVG(w.temperature_setting), 1), 0) AS AverageTemperatureSetting,
            COUNT(CASE WHEN w.temperature_setting IS NOT NULL THEN w.email ELSE NULL END) AS CountwithTemperatureSetting,
            COUNT(CASE WHEN w.temperature_setting IS NULL THEN w.email ELSE NULL END) AS CountwithoutTemperatureSetting
     FROM Location l
     LEFT JOIN Household h ON l.postal_code = h.postal_code
     LEFT JOIN WaterHeater w ON h.email = w.email
     LEFT JOIN Appliance a ON w.appliance_num = a.appliance_num
     GROUP BY l.state
     ORDER BY l.state ASC;";
            $result = $this->db->query($sql);
            return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    //JX
        public function getStateEnergysource($state)
    {
        try {
        $sql = "SELECT w.energy_source
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state
        GROUP BY w.energy_source
        ORDER BY w.energy_source ASC;";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    
    public function getStateMinimumCapacity($state)
    {
        try {
        $sql = "SELECT COALESCE(MIN(w.capacity), 0) AS MinimumCapacity
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state;";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }

    public function getStateAverageCapacity($state)
    {
        try {
        $sql = "SELECT COALESCE(ROUND(AVG(w.capacity)), 0) AS AverageCapacity
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state;";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    
    public function getStateMaximumCapacity($state)
    {
        try {
        $sql = "SELECT COALESCE(MAX(w.capacity), 0) AS MaximumCapacity
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state;";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    
    public function getStateMinimumTempSetting($state)
    {
        try {
        $sql = "SELECT COALESCE(MIN(w.temperature_setting), 0) AS MinimumTemperatureSetting
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state;";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    
    public function getStateAverageTempSetting($state)
    {
        try {
        $sql = "SELECT  COALESCE(ROUND(AVG(w.temperature_setting), 1), 0) AS AverageTemperatureSetting
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state;";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
    
    public function getStateMaximumTempSetting($state)
    {
        try {
        $sql = "SELECT COALESCE(MAX(w.temperature_setting), 0) AS MaximumTemperatureSetting
        FROM Location l
        LEFT JOIN Household h ON l.postal_code = h.postal_code
        LEFT JOIN WaterHeater w ON h.email = w.email
        WHERE l.state = :state";
        $stmt = $this->db->prepare($sql);
        $stmt->bindparam(':state', $state);
        $stmt->execute();
        // print_r($stmt);
        $result = $stmt->fetch();
        // print_r($result);
        return $result;
        } catch (PDOException $e) {
            echo $e->getMessage();
            return false;
        }
    }
}