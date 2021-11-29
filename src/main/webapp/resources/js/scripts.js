/*!
* Start Bootstrap - Scrolling Nav v5.0.4 (https://startbootstrap.com/template/scrolling-nav)
* Copyright 2013-2021 Start Bootstrap
* Licensed under MIT (https://github.com/StartBootstrap/startbootstrap-scrolling-nav/blob/master/LICENSE)
*/
//
// Scripts
//
var contentModal = document.getElementById('contentModal');
contentModal.addEventListener('show.bs.modal', function (event) {
    // Button that triggered the modal
    var button = event.relatedTarget;
    // Extract info from data-bs-* attributes
    var content = button.getAttribute('data-bs-content');
    var title = button.getAttribute('data-bs-title');
    var date = button.getAttribute('data-bs-date');
    // If necessary, you could initiate an AJAX request here
    // and then do the updating in a callback.
    //
    // Update the modal's content.
    var modalTitle = contentModal.querySelector('.modal-title');
    var modalBodyInput = contentModal.querySelector('.modal-body');
    var modalFooter = contentModal.querySelector('.modal-footer-date')
    modalTitle.textContent = title;
    modalBodyInput.textContent = content;
    modalFooter.textContent = date;
});

window.addEventListener('DOMContentLoaded', event => {

    // Activate Bootstrap scrollspy on the main nav element
    const mainNav = document.body.querySelector('#mainNav');
    if (mainNav) {
        new bootstrap.ScrollSpy(document.body, {
            target: '#mainNav',
            offset: 74,
        });
    };

    // Collapse responsive navbar when toggler is visible
    const navbarToggler = document.body.querySelector('.navbar-toggler');
    const responsiveNavItems = [].slice.call(
        document.querySelectorAll('#navbarResponsive .nav-link')
    );
    responsiveNavItems.map(function (responsiveNavItem) {
        responsiveNavItem.addEventListener('click', () => {
            if (window.getComputedStyle(navbarToggler).display !== 'none') {
                navbarToggler.click();
            }
        });
    });

});

