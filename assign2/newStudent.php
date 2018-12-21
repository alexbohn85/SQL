<!doctype html>
<html>
    <?php include("templateHead.php"); ?>
    <body>
        <!-- Navigation Start -->
        <?php include("templateNavbar.php"); ?>

        <!-- Content Page -->
        <div class="container my-5">
            <div class="row">
                <div class="col-12">
                    <h2>New Student Registration</h2>                    
                    <!-- Registration Form -->
                    <form class="form-horizontal" action="form.php" method="POST">

                        <!-- Student Name -->
                        <div class="form-group">
                            <label class="control-label" for="firstName">First name</label>
                            <input type="text" name="firstName" class="form-control form-control-sm" id="firstName">
                            <label for="lastName">Last name</label>
                            <input type="text" name="lastName" class="form-control form-control-sm" id="lastName">
                        </div><!-- Student Name -->

                        <!-- Gender -->
                        <div class="form-group">
                            Select Gender:<br>
                            <div class="form-check form-check-inline">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="radio" name="genderRadioOption" id="inlineRadio1" value="male" required>Male
                                </label>
                            </div>
                            <div class="form-check form-check-inline">
                                <label class="form-check-label">
                                    <input class="form-check-input" type="radio" name="genderRadioOption" id="inlineRadio2" value="female">Female
                                </label>
                            </div>
                        </div><!-- Gender -->

                        <!-- Street/City/Country/Phone/Email -->
                        <div class="form-group">
                            <label class="control-label" for="street">Street</label>
                            <input type="text" name="street" class="form-control form-control-sm" id="street">
                            <label for="city">City</label>
                            <input type="text" name="city" class="form-control form-control-sm" id="city">
                            <label for="country">Country</label>
                            <input type="text" name="country" class="form-control form-control-sm" id="country">
                            <label class="control-label" for="phoneNumber">Phone Number</label>
                            <input type="text" name="phoneNumber" class="form-control form-control-sm" id="phoneNumber">
                            <label for="email">Email</label>
                            <input type="email" name="email" class="form-control form-control-sm" id="email" aria-describedby="emailHelp">
                        </div><!-- Street/City/Country/Phone/Email -->
                        <button type="submit" class="btn btn-primary">Register</button>
                    </form><!-- Registration Form -->
                </div>
            </div>
        </div><!-- Content Page -->

        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    </body>
</html>