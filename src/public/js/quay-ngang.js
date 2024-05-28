window.addEventListener('DOMContentLoaded', function() {
    function checkOrientation() {
        if (window.innerHeight > window.innerWidth) {
            alert("Vui lòng quay ngang màn hình để có trải nghiệm tốt nhất.")
        }
    }
    
    checkOrientation();

    window.addEventListener('resize', function() {
        checkOrientation();
    });
});
