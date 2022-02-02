<?php
 #include('./db_connection.php');
 $title = "Mobile Shop";


 error_reporting(0);
 session_start();
   include('HTML_start.php');
   include('./Components/_Header.php');
   include('./Components/_Hero.php');
   include('./Components/_Center_Block.php');
   include('./Components/_Offer_Advertisment.php');
   include('./Components/_Featured_Products.php');
   include ('./Components/_contact.php');
   include('./Components/Repair_Pg.php');
   include('./Components/_Footer.php');
   include('./Tawak_To..php');
   include('HTML_end.php');
?>