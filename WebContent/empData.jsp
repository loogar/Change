<!DOCTYPE html>
<%@ page contentType="text/html;charset=windows-1252"%>
<html>
<head>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4/jquery.min.js"></script>
         <script type="text/javascript">
          $.ajax( {
              type : "Get", url : "dataservlet", contentType : "application/json", dataType : 'json', data :  {
                  "empID" : "31"
              },
              success : function (data) {
                  $("#mytbl").append('
 
<tr id="headerRow"></tr>
 
');
                 /* In below function you can take data[any row number] data[0].
                    (a, b) are (key, value) for 0th json object. as we are shoiwng only Keys so we used only 'a' below.
                 */
                  $.each(data[0], function (a, b) {
                      $("#headerRow").append('
 
<td style="padding:10px;background:orange;color:white;">' + a + '</td>
 
');
                  });
                 /* now we have to display data [multiple row with multiple column data].
                 * Here you have to observe one thing is we have multiple rows of data [multiple JSON objects in a JSON Array &
                 * Each JSON object contains multiple key value pairs]. So we must loop through each row and and then loop through each column[key value].
                 * function $.each(data, function(a, b) will get all JSON objects inside JSON Array, where 'a' indicates JSON object number.
                 * 'b' indicates the 'JSON object'. similarly
                 * function $.each(data[a], function(c, d) will get 'a'th JSON object, And here 'c' indicates Key where as 'd' indicates value.
                 * */
                  $.each(data, function (a, b) {
                      $("#mytbl").append('
 
<tr id="' + a + '"></tr>
 
');
                      var dataRowId = '#' + a;
                      $.each(data[a], function (c, d) {
                          $(dataRowId).append('
 
<td style="padding:10px;background:green;color:white;">' + d + '</td>
 
');
                      });
                  });
              },
              failure : function () {
                  alert("error...");
              }
          });
        </script>
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
<title>first</title>
</head>
<body>
<?audit suppress oracle.ide.xml.mismatched-end-tag?>
<table id='mytbl'></table>
<div style="background:Green;width:100%;padding:5px 0px;margin:10px 0px; ">
<p style="color:#fff;margin-left:10px;"> copyrights @teja.com</p>
 
</div>
</body>
</html>