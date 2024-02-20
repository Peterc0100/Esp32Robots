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

           $results = mysqli_query($link,'select commands.Action , Actions.robot from commands inner join Actions on commands.id = Actions.commandid where Actions.eventdt > Actions.actiondt order by Actions.id asc LIMIT 1;'); 

           if (!$results)
           {
               echo mysqli_error($results);
               exit();
           }

           $output = 'selct done';

 //          echo 'commands ';
  
           while ($row = mysqli_fetch_array($results))
           {
              if ($name == $row['robot'])
              {
 //               $action[] = $row['Action'];
 //               $action[] = [$row[2] , $row[1]];
                echo 'commands' . $row['Action'];   
                $query = 'Update Actions set actiondt = now() where eventdt > actiondt order by id  asc limit 1;';
                $results = mysqli_query($link,$query);                      
              
               }
                else
               {
                 echo 'no actions required for ' . $name . ' ' . $row['robot'] ;
               }        

           }   
           include 'action.html.php';
           ?> 
    </body>
</html>
