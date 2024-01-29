
// Initialize and add the map
let map;

async function initMap() {
    // The location of Boulder
    const position = { lat: 40.0187488, lng: -105.2607357 };

    const { Map, InfoWindow } = await google.maps.importLibrary("maps");
    const { AdvancedMarkerElement} = await google.maps.importLibrary("marker");

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
    marker.addListener("click", ({}) => {

        infoWindow.close();
        let infoCard = '' +
            '<div class="intro-text left-0 text-center bg-faded p-5 rounded">\n' +
            '        <h2 class="section-heading mb-4">\n' +
            '          <span class="section-heading-upper">What is about</span>\n' +
            '        </h2>\n' +
            '        <p class="mb-3">test123</p>\n' +
            '        <div class="intro-button mx-auto">\n' +
            '          <a class="btn btn-primary" href="#!">Go to User!</a></div>\n' +
            '      </div>'

        infoWindow.setContent(infoCard);
        infoWindow.open(marker.map, marker);
    });


}

initMap();
