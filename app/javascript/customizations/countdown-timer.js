(function() {
    // Constants for time units
    const second = 1000,
        minute = second * 60,
        hour = minute * 60,
        day = hour * 24;

    // Destination date
    const destinationDate = new Date('04/01/2024').getTime();

    // Update countdown every second
    const countdownInterval = setInterval(updateCountdown, 500);

    // Update countdown function
    function updateCountdown() {
        const now = new Date().getTime();
        const distance = destinationDate - now;

        // Update DOM elements
        document.querySelector("#days").innerText = Math.floor(distance / day);
        document.querySelector("#hours").innerText = Math.floor((distance % day) / hour);
        document.querySelector("#minutes").innerText = Math.floor((distance % hour) / minute);
        document.querySelector("#seconds").innerText = Math.floor((distance % minute) / second);

        // Clear interval when countdown is complete
        if (distance < 0) {
            clearInterval(countdownInterval);
        }
    }
})();