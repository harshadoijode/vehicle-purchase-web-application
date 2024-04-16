<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage=""  %>
    
<%@ include file="hometabs.html" %>
<!DOCTYPE html>
<html lang="en">


<body>


    <!-- Contact Start -->
    <div class="container-fluid py-5">
        <div class="container">
            <div class="row">
                
                <div class="col-lg-7">
                    <h6 class="text-primary text-uppercase font-weight-bold">Contact Us</h6>
                    <h1 class="mb-4">Contact For Any Queries</h1>
                    <div class="contact-form bg-secondary" style="padding: 30px;">
                        <div id="success"></div>
                        <form name="sentMessage" id="contactForm" novalidate="novalidate">
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" id="name" placeholder="Application Developer"
                                    required="required" data-validation-required-message="Please enter your name" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="email" class="form-control border-0 p-4" id="email" placeholder="GFGC@GMAIL.COM"
                                    required="required" data-validation-required-message="Please enter your email" />
                                <p class="help-block text-danger"></p>
                            </div>
                            <div class="control-group">
                                <input type="text" class="form-control border-0 p-4" id="subject" placeholder="+91 7892415899"
                                    required="required" data-validation-required-message="Please enter a subject" />
                                <p class="help-block text-danger"></p>
                            </div>
                            
                           
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Contact End -->



    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
   
</body>

</html>