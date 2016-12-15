<%@ page language="java" contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" %>

<!-- preloader -->
<div id="loader-wrapper">
    <div id="loader"></div>
    <div class="loader-section section-left"></div>
    <div class="loader-section section-right"></div>
</div>
<script type="text/javascript">
    $(document).ready(function () {
        setTimeout(function () {
            $('body').addClass('loaded');
        }, 1000);
    });
</script>
<!-- /preloader -->


<!-- header -->
<header>
    <nav class="white">
        <div class="container">
            <div class="nav-wrapper">
                <a href="#!" class="brand-logo black-text">logo</a>
                <a href="#" data-activates="mobile-side-nav" class="button-collapse right"><i class="material-icons">menu</i></a>
                <ul class="right hide-on-med-and-down">
                    <li><a href="#">Services</a></li>
                    <!-- Dropdown Trigger -->
                    <li>
                        <a class="dropdown-button" href="#" data-activates="servicesDropdown">Services
                            <i class="material-icons right">arrow_drop_down</i>
                        </a>
                    </li>
                    <li><a href="#">Expertise</a></li>
                    <li><a href="#">Our Work</a></li>
                    <li><a href="#">About Us</a></li>
                </ul>
                <!-- Dropdown Structure -->
                <ul id="servicesDropdown" class="dropdown-content">
                    <li><a href="#!">one</a></li>
                    <li><a href="#!">two</a></li>
                    <li class="divider"></li>
                    <li><a href="#!">three</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <ul class="side-nav" id="mobile-side-nav">
        <li><a href="#">Services</a></li>
        <li><a href="#">Expertise</a></li>
        <li><a href="#">Expertise</a></li>
        <li><a href="#">About Us</a></li>
    </ul>
</header>
<script type="text/javascript">
    jQuery(document).ready(function() {
        $(".button-collapse").sideNav();
    });
</script>
<!-- /header -->
