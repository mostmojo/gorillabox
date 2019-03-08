import mapboxgl from 'mapbox-gl';
const apiKey = "pk.eyJ1Ijoib21hcmJlcnJhZGEiLCJhIjoiY2pydzhiMXNyMDlhZTQ5dGZmM3hmNnlsayJ9.Zw6BO6U5IPUKeRPFfsV-bg";

  const getCoordinates = (address) => {
    const urlAddress = `https://api.mapbox.com/geocoding/v5/mapbox.places/${address}.json?access_token=${apiKey}`;
    fetch(urlAddress)
      .then(response => response.json())
      .then((data) => {
        const position = data.features[0].center;
        const longitude = position[0];
        const latitude = position[1];

        mapboxgl.accessToken = apiKey;
        const map = new mapboxgl.Map({
          container: 'map',
          style: 'mapbox://styles/mapbox/streets-v9',
          center: position,
          zoom: 12
        });

        new mapboxgl.Marker()
          .setLngLat(position)
          .addTo(map);
      });
  };

  const init_mapbox = () => {
    const deliveryAddressCheck = document.getElementById('hidden_delivery_address')
      if (deliveryAddressCheck) {
        var delivery_address = deliveryAddressCheck.innerHTML
        getCoordinates(delivery_address)
      }
  }

 export { init_mapbox };



