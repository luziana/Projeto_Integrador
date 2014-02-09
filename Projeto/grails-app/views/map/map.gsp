<!DOCTYPE html>
<html>
  <head>
  
  <resource:include components="map" key="AIzaSyBS0q7wbuQAkt36ZfITUGAvULWEkgQhFi0"/>
  
  <%-- ESTE CODIGO TAMBEM GERA O MAPA, MAS SEM O PLUGIN
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
    <style type="text/css">
      html { height: 100% }
      body { height: 100%; margin: 0; padding: 0 }
      #map-canvas { height: 100% }
    </style>
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBS0q7wbuQAkt36ZfITUGAvULWEkgQhFi0&sensor=true">
    </script>
    <script type="text/javascript">
      function initialize() {
        var mapOptions = {
          center: new google.maps.LatLng(-34.397, 150.644),
          zoom: 8
        };
        var map = new google.maps.Map(document.getElementById("map-canvas"),
            mapOptions);
      }
      google.maps.event.addDomListener(window, 'load', initialize);
    </script>
    --%>
  </head>
  <body>
  <%--ESTE CODIGO FUNCIONA CORRETAMENTE
  <richui:map markers="${[[latitude: 40.689299, longitude: -74.044, draggable: true, description: 'Statue of Liberty'],
[latitude: 40.69575, longitude: -74.056257, draggable: false, description: 'Liberty State Park']]}" route="true" />--%>
  <richui:map lat="-6.1060143" lng="-38.20428,15" route="true" />
  </body>
</html>