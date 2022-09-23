// Create the script tag, set the appropriate attributes
const script = document.createElement("script");
script.src =
  "https://maps.googleapis.com/maps/api/js?key=AIzaSyCceeeYRxCfgV0-vLqu-KkxqbUDnsux0eY&callback=initMap";
script.async = true;

let map;
const countries = JSON.parse(document.getElementById("countryData").dataset.countries);

window.initMap = function () {
  map = new google.maps.Map(document.getElementById("map"), {
    center: { lat: 0, lng: 0 },
    zoom: 1,
  });

  for (let i = 0; i < countries.length; i++) {
    new google.maps.Marker({
      position: new google.maps.LatLng(countries[i].lat, countries[i].long),
      map: map,
    });
  }
};


console.log(countries);
// Append the 'script' element to 'head'
document.head.appendChild(script);
