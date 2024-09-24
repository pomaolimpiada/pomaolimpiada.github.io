function toggleMode() {
    const body = document.body;
    const icon = document.getElementById('icon');
    const modeText = document.getElementById('mode-text');

    body.classList.toggle('dark-mode');
    body.classList.toggle('light-mode');

    if (body.classList.contains('dark-mode')) {
        localStorage.setItem('theme', 'dark');
        icon.src = 'sun.svg'; // Change to sun image
        modeText.innerHTML = 'Light Mode'; // Text for light mode
    } else {
        localStorage.setItem('theme', 'light');
        icon.src = 'moon.svg'; // Change to moon image
        modeText.innerHTML = 'Dark Mode'; // Text for dark mode
    }
}

function loadTheme() {
    const savedTheme = localStorage.getItem('theme');
    const body = document.body;
    const icon = document.getElementById('icon');
    const modeText = document.getElementById('mode-text');

    if (savedTheme === 'dark') {
        body.classList.add('dark-mode');
        icon.src = 'sun.svg'; // Set to sun image
        modeText.innerHTML = 'Light Mode'; // Text for light mode
    } else {
        body.classList.add('light-mode');
        icon.src = 'moon.svg'; // Set to moon image
        modeText.innerHTML = 'Dark Mode'; // Text for dark mode
    }
}

// Load the theme when the page loads
window.onload = loadTheme;
