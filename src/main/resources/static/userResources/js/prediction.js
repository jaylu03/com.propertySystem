function prediction() {

	var crimeRate = document.getElementById("crimeRate");
	console.log('crimeRate', crimeRate.value);

	var residentialLandZoneArea = document
			.getElementById("residentialLandZoneArea");
	var nonRetailBusinessArea = document
			.getElementById("nonRetailBusinessArea");
	var river = document.getElementById("river");
	var nitricOxidesLevel = document.getElementById("nitricOxidesLevel");
	var averageRoomCount = document.getElementById("averageRoomCount");
	var houseAge = document.getElementById("houseAge");
	var industrialLocationDistance = document
			.getElementById("industrialLocationDistance");
	var radialHighwaysCount = document.getElementById("radialHighwaysCount");
	var propertyTaxRate = document.getElementById("propertyTaxRate");
	var pupilTeacherRatio = document.getElementById("pupilTeacherRatio");
	var migrantPopulationRatio = document
			.getElementById("migrantPopulationRatio");
	var ruralPopulationRatio = document.getElementById("ruralPopulationRatio");
	var outputId = document.getElementById("outputId");
	
	var xhttp = new XMLHttpRequest();
	
	xhttp.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			/*alert(this.responseText);*/
			var jsn = JSON.parse(this.responseText);
			
			outputId.innerHTML = 'Predicted Price :'+jsn.house_price * 2+' Lakhs'; 
		}
	};
	xhttp.open("GET", "http://127.0.0.1:2021/?crimeRate="+crimeRate.value 
						+"&residentialLandZoneArea="+residentialLandZoneArea.value
						+"&nonRetailBusinessArea="+nonRetailBusinessArea.value
						+"&river="+river.value
						+"&nitricOxidesLevel="+nitricOxidesLevel.value
						+"&averageRoomCount="+averageRoomCount.value
						+"&houseAge="+houseAge.value
						+"&industrialLocationDistance="+industrialLocationDistance.value
						+"&radialHighwaysCount="+radialHighwaysCount.value
						+"&propertyTaxRate="+propertyTaxRate.value
						+"&pupilTeacherRatio="+pupilTeacherRatio.value
						+"&migrantPopulationRatio="+migrantPopulationRatio.value
						+"&ruralPopulationRatio="+ruralPopulationRatio.value, true);
	xhttp.send();
}