<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        
        <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css" />
        
    </head>
    <body>
        <div class="row">
            <div class="col-xs-3">
                <ul>
                    <li><a href="#add-student">Add Student</a></li>
                    <li><a href="">Delete Student</a></li>
                    <li><a href="">Edit Student Details</a></li>
                </ul>
            </div>
            <div class="col-xs-9" id="add-student">
                <label>Name <input type="text" name="name" required="required"></label>
                <label>Enrollment No <input type="text" name="roll-no" required="required"></label>
                <br>
                <label>Father Name <input type="text" name="father-name"></label>
                <label>Mother Name <input type="text" name="mother-name"></label>
                <br>
                <label>Date of Birth <input type="date" name="dob"></label>
                <label>Gender   <select>    <option value="1">Male</option>
                                            <option value="2">Female</option>
                                </select>
                </label>
                <label>Category <select>    <option value="1">General</option>
                                            <option value="2">SC</option>
                                            <option value="2">ST</option>
                                            <option value="2">OBC</option>
                                            <option value="2">Other</option>
                                </select>
                </label>
                <label>Blood Group <input type="text" name="blood-group"></label>
                <hr>
                <label>Course<input type="text" name="roll-no"></label>
                <input type="text" name="name">
                <input type="text" name="roll-no">
                <input type="text" name="name">
                <input type="text" name="roll-no">
                <input type="text" name="name">
                <input type="text" name="roll-no">
                
            </div>
        </div>
    </body>
</html>
