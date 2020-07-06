document.addEventListener("DOMContentLoaded", function(){
    const canvasel = document.getElementById("mycanvas");
    canvasel.width = 500;
    canvasel.height = 500;

    const ctx = canvasel.getContext('2d');
    ctx.fillStyle = "red";
    ctx.fillRect(0, 0, 500, 500);

    ctx.beginPath();
    ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
    ctx.strokeStyle = "blue";
    ctx.lineWidth = 3;
    ctx.stroke();
    ctx.fillStyle = "green";
    ctx.fill(); 
    
    // ctx.beginPath();
    // ctx.arc(100, 100, 20, 0, 2 * Math.PI, true);
    // ctx.strokeStyle = "green";
    // ctx.lineWidth = 5;
    // ctx.stroke();
    // ctx.fillStyle = "blue";
    // ctx.fill();
});


// Pick a color to set as strokeStyle
// Set the lineWidth attribute to some integer
// Invoke stroke with no arguments
// Open index.html in your browser to view it
// To fill in the circle:

// Pick a color to set as fillStyle
// Invoke fill with no arguments
// Open index.html in your browser to view it
// Phase IV: Draw your Favorite Sha