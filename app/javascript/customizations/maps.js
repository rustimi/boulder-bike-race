
// Initialize and add the map
let map;

async function initMap() {
    // The location of Boulder
    const position = { lat: 40.0187488, lng: -105.2607357 };

    const { Map, InfoWindow } = await google.maps.importLibrary("maps");
    const { AdvancedMarkerElement,  PinElement} = await google.maps.importLibrary("marker");

    // The map, centered at Boulder
    map = new Map(document.querySelector("#map"), {
        zoom: 12,
        center: position,
        mapId: "BOULDER_MAP",
    });

    // The marker
    const marker = new AdvancedMarkerElement({
        map: map,
        position: position,
        title: "Boulder",
    });

    const infoWindow = new InfoWindow();
    marker.addListener("click", ({ domEvent, latLng }) => {
        const { target } = domEvent;

        infoWindow.close();
        infoWindow.setContent(marker.title);
        infoWindow.open(marker.map, marker);
    });


}

initMap();
