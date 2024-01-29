
// Initialize and add the map
let map;

async function initMap() {
    // The location of Boulder
    const position = { lat: 40.0187488, lng: -105.2607357 };

    const { Map } = await google.maps.importLibrary("maps");
    const { AdvancedMarkerElement } = await google.maps.importLibrary("marker");

    // The map, centered at Boulder
    map = new Map(document.getElementById("map"), {
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
}

initMap();
