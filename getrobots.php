<html>
   <body>
           <?php
 
           $name = $_GET['Name'];
 
           $link = mysqli_connect('localhost',your sql user,your sql password,'Robots');

           if (!$link)
           {
             $output = 'cant connect to db';
             echo $output;
             include 'output.html.php';
             exit();
           }

           $output = 'connected to robots'; 

//           echo $output;
           
           $results = mysqli_query($link,'select boardaddr,board,robot,macaddr,uuids,uuidc from robots where active = "Y";'); 

           if (!$results)
           {
               echo mysqli_error($results);
               exit();
           }

 //          echo 'no robots ' . $name ;

 //          $output = 'selct done';

 //          echo 'commands ';
  
           while ($row = mysqli_fetch_array($results))
           {
              if ($name == $row['boardaddr'])
              {
                 echo 'boards ' . $row['robot'] . ',' . $row['macaddr']. ',' . $row['uuids']. ',' . $row['uuidc'] .';' ;   
//                {
//                 echo 'no robots ' . $name ;
              }        

           }   
           include 'action.html.php';
           ?> 
    </body>
</html>
