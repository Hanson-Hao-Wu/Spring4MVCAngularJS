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