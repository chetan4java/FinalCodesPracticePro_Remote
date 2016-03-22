<html>
<head>
<script type="text/javascript"> 
         function filterDigits(eventInstance) { 
            eventInstance = eventInstance || window.event;
                key = eventInstance.keyCode || eventInstance.which;
            if ((47 < key) && (key < 58) || key = 45 || key == 8) {
               return true;
            } else {
                    if (eventInstance.preventDefault) eventInstance.preventDefault();
                    eventInstance.returnValue = false;
                    return false;
            } //if
         } //filterDigits
      </script>
</head>
<body>

	<input type="text" onkeypress="filterDigits(event)" />

</body>
</html>