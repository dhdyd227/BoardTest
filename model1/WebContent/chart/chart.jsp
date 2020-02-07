<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <!--Load the AJAX API-->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    
    <script type="text/javascript">

      // Load the Visualization API and the piechart package.
      google.charts.load('current', {'packages':['corechart']});

      // Set a callback to run when the Google Visualization API is loaded.
      google.charts.setOnLoadCallback(drawChart);

      // Callback that creates and populates a data table, 
      // instantiates the pie chart, passes in the data and
      // draws it.
      function drawChart() {

      // Create the data table.
      var data = new google.visualization.DataTable();
      
 	  // Set chart options
      var options = {'title':'How Much Pizza I Ate Last Night',
              'width':400,
              'height':300};
      
      data.addColumn('string', '부서명');
      data.addColumn('number', '인원수');
      
      //데이터를 ajax로 받기
      $.ajax("../ajax/GetDeptCnt.do",{dataType : "json"})
      .done(function(charData) { 
    	var arr =[];
    	for (i =0;i<charData.length;i++){
    		arr.push([charData[i].department_name,charData[i].cnt])
    		
    	}
    	data.addRows(arr);
    	/*
      data.addRows([
        ['Mushrooms', 3],
        ['Onions', 1],
        ['Olives', 1],
        ['Zucchini', 1],
        ['Pepperoni', 2]
      ]);*/

      // Instantiate and draw our chart, passing in some options.
      var chart = new google.visualization.BarChart(document.getElementById('chart_div'));
      chart.draw(data, options);
    
      	});
      }
    </script>
  </head>

  <body>
//Div that will hold the pie chart
    <div id="chart_div" style="width:400; height:300"></div>
  </body>
</html>