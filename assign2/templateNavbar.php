        <!-- Navigation Start --> 
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
          <a class="navbar-brand" href="#">ESL School</a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>

          <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
              <li class="nav-item active">
                <a class="nav-link" href="index.php">Home<span class="sr-only">(current)</span></a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="newStudent.php">New Student</a>
              </li>
              <li class="nav-item active">
                <a class="nav-link" href="listStudents.php">Students List</a>
              </li>
            </ul>
            <form class="form-inline my-2 my-sm-0" action="searchStudent.php" method="POST">
              <input class="form-control mr-sm-2" type="search" name="search" size="30" placeholder="Type student first name here..." aria-label="Search">
              <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
          </div>
        </nav><!-- Navigation End -->