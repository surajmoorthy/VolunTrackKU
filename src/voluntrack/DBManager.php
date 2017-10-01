<?php
namespace voluntrack;
session_start();
/**
 * DBManager handles all of the database
 * connections and queries for voluntrack.
 */
class DBManager
{
    private static $conn = null;
    public function __construct($value='')
    {

    }

    public static function get_connection() {
        if(self::$conn === null) {
            self::$conn = self::connect_to_database();
        }

        return self::$conn;
    }


    private function connect_to_database($value='')
    {
        $servername = "localhost";
        $username = "voluntrack";
        $password = "voluntrack";


        try
        {
            $conn = new \PDO("mysql:host=$servername;dbname=voluntrack", $username, $password);
            // set the PDO error mode to exception
            $conn->setAttribute(\PDO::ATTR_ERRMODE, \PDO::ERRMODE_EXCEPTION);
            //echo "Connected successfully";

        }
        catch(PDOException $e)
        {
            echo "Connection failed: " . $e->getMessage();
        }
        finally {
            return $conn;
        }
    }


    public function user_exists($email='')
    {
        echo "<br>inside user_exists() function<br> using $email parameter";
        $stmt = self::get_connection()->prepare("SELECT USERNAME from USERS WHERE USERNAME = :email");
        $stmt->bindParam(':email', $email);
        $stmt->execute();

        $result = $stmt->setFetchMode(\PDO::FETCH_ASSOC);

    }


}


 ?>