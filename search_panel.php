<html>
 <head>
 	<title>Vansh's Flight Search System</title>
     <style>
     body{
      background-color: #d0cfcb;
      margin: unset;
     }
     .panel_form
     {
        height:200px;
     }
     .panel_block
     {
      display:inline-block;
      margin-left: 25px;
      margin-right: 25px;
     }
      
     .panel_label
     {
      letter-spacing: 1px;
    font-size: 16px;
     }
     
     .panel_submit
     {  
       display: inline-block;
     }

     .panel_from
     {  margin-left:100px;
        display: inline-block;
        margin-right: 25px;
     }

     .container
     {
      background: #124680;
    min-height: 200px;
    color: #fff;
     }
     
     .styling
     {  margin-top: 15px;
       display: block;
       text-align: center;
       height:30px;
     }

     #search_btn
     {
   letter-spacing: 1px;
    color: #fff;
    background-color: #eb2026;
    /* border-color: #eb2026; */
    font-size: 16px;
    line-height: 16px;
    border: none;
    width: 100px;
    height: 35px;
    border-radius: 2px;
     }

     #search_btn:hover {
    font-size: 18px;
      }
     </style>
 </head>

 <body>

 <div class = "container">
 	<br>
 	 <form class="panel_form" name = "details" method = "post" action = "listing_page.php" >
     <br/>
    </br>
      <div class="panel_from for_from">
       <label class="panel_label">From</label>
       
      <select size = "+0" name="from_input" class="styling" required>        <!-- FROM DROPDOWN LIST  -->
         <option selected="selected">-Select-</option>
         <option disabled="disabled" ><i>-Top Metropolitan Cities-</i></option>
         <option value ="DEL">Delhi (DEL)</option>
         <option value ="MAA">Chennai (MAA)</option>
         <option value ="BOM">Mumbai (BOM)</option>
         <option value ="BLR">Bangalore (BLR)</option>
         <option value ="HYD">Hyderabad (HYD)</option>
       </select>
      </div>
     <div class="panel_block for_to">
      <label class="panel_label">To</label>
      

      <select size = "+0" name="to_input" class="styling" required>          <!-- TO DROPDOWN LIST  -->
         <option selected="selected">-Select-</option>
         <option disabled="disabled" ><i>-Top Metropolitan Cities-</i></option>
         <option value ="DEL">Delhi (DEL)</option>
         <option value ="MAA">Chennai (MAA)</option>
         <option value ="BOM">Mumbai (BOM)</option>
         <option value ="BLR">Bangalore (BLR)</option>
         <option value ="HYD">Hyderabad (HYD)</option>
       </select>
     </div>
      <div class="panel_block for_depart">
      <label class="panel_label">Departure Date</label>                    <!-- DATE OF DEPARTURE  -->
      
      <input type="date"  name="date_input" min='2018-08-23' value="<?php echo date('Y-m-d'); ?>" class="styling" required>
     </div>
      <div class="panel_block for_pass">
      <label class="panel_label">No. of passengers</label>
      
      <select size = "1" name="total_passengers" class="styling" required>     <!-- NO. OF PASSENGERS  -->
      	 <option value ="One">1</option>
      	 <option value ="Two">2</option>
      	 <option value ="Three">3</option>
      	 <option value ="Four">4</option>
      	 <option value ="Five">5</option>
      	 <option value ="Six">6</option>
         <option value ="Seven">7</option>
         <option value ="Eight">8</option>
         <option value ="Nine">9</option>
       </select>
       </div>
       <div class="panel_submit for_submit">                                       <!-- SUBMIT BTN  -->
       <input type ="submit" id="search_btn" class="styling" value="Search">
        

 
    </form>
 </div>

 </body>
 
 </html>


 
