<!DOCTYPE html>
<html>
<head>
	<title></title>
   
	<style>
        table
    {
        border-collapse: collapse;
        margin-right: auto;
        margin-left: auto;
        font-family: 'Varela Round', sans-serif;
       /* border-color: #5a708b; */
        border-width: 0.1px;
    }
    #input{
        border: 0px;    
    }
    td,th
    {
        padding: 15px;   
    }
      .table-title {        
      padding-bottom: 1px;
     background-color: #435d7d; 
      color: #fff;
      padding: 20px 1px 30px 30px; 
      padding-top: 3px;
      padding-bottom: 3px;
      margin: 20px 20px 1px; 
      margin-left: 22.5%;
      border-radius: 3px 3px 0 0;
      width: 52.5%;
    }
  td{
            width:50%;
            border-width: 1px;
            border: 0.5px solid black;
     }
     #rowspan{
            width: 10%;
            
        }
        h1{
            text-align: center;
            /* color: #fdfdfd; */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            font-size: 20px;
        }

        #input{
            width: 200px;
            height: 30px;
            border: 0;
            font-size: medium;
            padding-right: 50px;
            padding-left: 50px;
        }
        th{
            border-width: 1px;
            border: 0.5px solid black;
            /* background-color: #435d7d; */
            /* color: #566787; */

        }
        table.table-striped.table-hover tbody tr:hover {
		background: #e6dfdf;
	}

      
        .button {
      background-color: #435d7d; 
      border: none;
      color: white;
      padding: 15px 32px;
      text-align: center;
      text-decoration: none;
      display: inline-block;
      font-size: 16px;
      margin: 4px 2px;
      cursor: pointer;
      -webkit-transition-duration: 0.4s; /* Safari */
      transition-duration: 0.4s;
    }
    .button1 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  margin-left: 55%;
  margin-top: 10px;
    }

.button1:hover {background-color: #344861}

.button2 {
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
  margin-left: 4%;
  margin-top: 10px;
}
.button2:hover {background-color: #344861}
        
	</style>
</head>
<body>
    <div class="table-title">
    <h1>Result Analysis</h1>
</div>
    <table border="1" class="table table-striped table-hover">
    <tbody>        
          <tr>
          <td>  Number of Students Appeared</td>
          <td><input type="text" id="input" name="appeared" style="text-align: center;"></td>
          </tr>
        
          <tr>
            <td>  Number of Students Passed</td>
            <td><input type="text" id="input" name="passed" style="text-align: center;"></td>
          </tr>
        
          <tr>
            <td>Number of Students Failed</td>
            <td><input type="text" id="input" name="failed" style="text-align: center;"></td>
            
            
            </tr>
    
          <tr>
              <td>Percentage of Result</td>
              <td><input type="text" id="input" name="result" style="text-align: center;"></td>
              
              
              </tr>
    
              <tr>
                  <td>Number of Students with marks > 80 %</td>
                  <td><input type="text" id="input" name="percent80" style="text-align: center;"></td>
                  
                  
                  </tr>
    
              <tr>
                  <td>Number of Students with marks 60 < % < 80</td>
                  <td><input type="text" id="input" name="percent8060" style="text-align: center;"></td>
                  
                  
                  </tr>
    
              <tr>
                  <td>Number of Students with marks 40 < % < 60</td>
                  <td><input type="text" id="input" name="percent6040" style="text-align: center;"></td>
                  
                  
                  </tr>

                                
              </tbody>


            </table>
            <button class="button button1" type="submit" name="submit">Submit</button>
            <button class="button button2">Show</button>
          
        
</body>
</html>