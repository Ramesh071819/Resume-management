<cfinclude  template="../resumeTemplate/navbar.cfm"> 
<cfinclude  template="formatInclude.cfm">
<link href="../resumeCssFiles/addUser.css" rel="stylesheet">
<script src="../resumeJsFiles/addUser.js"></script>
<div class="text-secondary " >
    <center><h3 class="userDetailsHeader labelcolor mt-2 text-success" >Add Candidate Details</h3></center>
    <h5 class="mt-5 personalDetailsHeader labelcolor">Personal Information:</h5>
    <form  action="../resumeAction/addUsersFile.cfm?multipleFileUpload='success'" id="form1"  enctype="multipart/form-data" method="post" autocomplete="on">
        <div class='container pt-3 totalMargin'>
            <div class="row">
                <div class="col-md-4 ">
                    <label class='labelName'>First Name<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly" error1="First Name"  name="firstName"   id="firstName"  placeholder="">                         
                    <p id="firstNameError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-4 ">
                    <label class='labelName'>Middle Name</label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="middleName"  error1="Middle Name" id="middleName"  placeholder="">                         
                    <p id="middleNameError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-4 ">
                    <label class='labelName'>Last Name<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="lastName"  error1="Last Name"  id="lastName"  placeholder="">                         
                    <p id="lastNameError" class="text-danger fieldError"></p> 
                </div>
            </div>
            <div class="row mt-3">
                <div class="col-md-3 ">
                    <label class='labelName'>Email<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name dynamicRegx fieldFocus"   name="email" error1='Email'  id="email"  placeholder="">                         
                    <p id="emailError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-2 ">
                    <label class='labelName'>Mobile Number<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name dynamicRegx fieldFocus numOnly"  name="mobile"   id="mobile" error1='Mobile Number' placeholder="" maxlength="10">                         
                    <p id="mobileError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-2 ">
                    <label class='labelName'>Alternate Number</label>
                    <input type="text" class="form-control fieldBorder fieldFocus numOnly"  name="altMobileNum"   id="altMobileNum" placeholder="" maxlength="10">                         
                    <p id="altMobileNumError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-2 ">
                    <label class='labelName'>Date of Birth<span class="important">*</span></label>
                    <input type="" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="dob"   id="dob"  error1='DOB' placeholder="">                         
                    <p id="dobError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-3">
                    <label class="labelName">Gender<span class="important">*</span></label>
                    <select class="form-select  w-100 fieldBorder visitors_name fieldFocus" id="selectGender" name='selectGender'>
                        <option value="" default selected></option>
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                        <option value="Others">Other</option>
                    </select>
                    <p class="text-danger fieldError" id="selectGenderError"></p>
                </div>
            </div>
        </div> 
        <h5 class="mt-2  personalDetailsHeader">Professional Details</h5>
        <div class="container pt-1 totalMargin">  
            <div class="row mt-3">
                <div class="col-md-3 ">
                    <label class="labelName">Highest Qualification<span class="important">*</span></label>
                    <select class="form-select  w-100 fieldBorder visitors_name fieldFocus" id="selectDegree" name='selectDegree'  >
                        <option value="" default selected></option>
                        <option value="MTCH">MTECH</option>
                        <option value="BTECH">BTECH</option>
                        <option value="Degree">Degree</option>
                    </select>
                    <div class="text-danger fieldError" id="selectDegreeError"></div>
                </div>
                <div class="col-md-3 offset-md-1"> 
                    <label class='labelName'>Years of Experience<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder  visitors_name fieldFocus numOnly"  name="workExperience"  error1='Work Experience'  id="workExperience"  placeholder="" maxlength="2">                         
                    <p id="workExperienceError" class="text-danger fieldError"></p>  
                </div> 
                <div class="col-md-3 offset-md-1"> 
                    <label class='labelName'>Nationality<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="nationality" error1='Nationality'   id="nationality"  placeholder="">                         
                    <p id="nationalityError" class="text-danger fieldError"></p>  
                </div>                   
            </div>
            <div class="row mt-3">
                <div class="col-md-3">
                    <label class='labelName'>Notice Period<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="noticePeriod" error1='Notice Period'  id="noticePeriod"  placeholder="">                         
                    <p id="noticePeriodError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-3 offset-md-1 ">
                    <label class='labelName'>Current Employer<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="currentEmployer" error1='Current Employer'  id="currentEmployer"  placeholder="">                         
                    <p id="currentEmployerError" class="text-danger fieldError"></p> 
                </div> 
                <div class="col-md-3 offset-md-1 ">
                    <label class='labelName'>Current CTC<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="ctc"  error1='Current CTC' id="ctc"  placeholder="">                         
                    <p id="ctcError" class="text-danger fieldError"></p> 
                </div> 
            </div>
            <div class="row mt-3">
                <div class="col-md-3">
                    <label class='labelName'>Expected CTC<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="expectedCtc" error1='Expected CTC'   id="expectedCtc"  placeholder="">                         
                    <p id="expectedCtcError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-3 offset-md-1">
                    <label class="labelName">Department<span class="important">*</span></label>
                    <select class="form-select  w-100 fieldBorder visitors_name fieldFocus" id="department" name="department">
                        <option value="" default selected></option>
                        <option value="Developing">Development</option>
                        <option value="Testing">Testing</option>
                        <option value="Business">Business</option>
                    </select>
                    <div class="text-danger fieldError" id='departmentError'></div>
                </div>
                <div class="col-md-3 offset-md-1 ">
                    <label class="labelName" id='skillLabel'>Skill Set<span class="important">*</span></label>
                    <select class="form-select  w-100 fieldBorder skillSet " id="skillSet" multiple="multiple" size="5" name='skillSet'>
                        <option value=""  ></option>                       
                        <option value="C">C</option>
                        <option value="Java">Java</option>
                        <option value="Python">Python</option>
                        <option value="CF">Cold Fusion</option>                   
                    </select>
                    <div class="text-danger" id='skillSetError'></div>
                </div>
            </div>  
        </div>
        <h5 class="mt-2  personalDetailsHeader">Present Address:</h5>
        <div class="container pt-1 totalMargin">
            <div class="row mt-3">
                <div class="col-md-4">
                    <label class='labelName'>Address Line 1<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus"  name="addressLine1" error1='Address'  id="addressLine1"  placeholder="">                         
                    <p id="addressLine1Error" class="text-danger fieldError"></p> 
                </div> 
                <div class="col-md-4">
                    <label class='labelName'>Address Line 2(optional)</label>
                    <input type="text" class="form-control fieldBorder"  name="addressLine2"  id="addressLine2"  placeholder="">                         
                    <p id="addressLine2Error" class="text-danger"></p> 
                </div>
                <div class="col-md-4">
                    <label class='labelName'>Zip Code<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="zipcode" error1='Zip Code'   id="zipcode"  placeholder="" maxlength="6">                         
                    <p id="zipcodeError" class="text-danger fieldError"></p> 
                </div>  
            </div>
            <div class="row mt-3">
                <div class="col-md-3">
                    <label class="labelName">State<span class="important">*</span></label>
                    <select class="form-select  w-100 fieldBorder visitors_name fieldFocus allStates" id='state' name="state">
            <!---                   <option value="" default selected></option> 
                        <option value="Andhra Pradesh">Andhra Pradesh</option>      
                        <option value="mp">Madhya Pradesh</option>
                        <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chandigarh">Chandigarh</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                        <option value="Daman and Diu">Daman and Diu</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Lakshadweep">Lakshadweep</option>
                        <option value="Puducherry">Puducherry</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                        <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="Uttarakhand">Uttarakhand</option>
                        <option value="West Bengal">West Bengal</option>--->
                    </select>
                    <div class="text-danger fieldError" id='stateError'></div>
                </div>
                <div class="col-md-4 offset-md-1">
                    <label class='labelName'>City<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus charOnly"  name="city" error1='City'  id="city"  placeholder="">                         
                    <p id="cityError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-4">
                    <label class='labelName'>Phone Number<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="phone" error1='Phone Number'  id="phone"  placeholder="" maxlength="10">                         
                    <p id="phoneError" class="text-danger fieldError"></p> 
                </div>  
            </div>
            <div class="row">
                <div class="col-md">
                    <div class="form-check mb-3 mt-3">
                        <label class="form-check-label">
                        <input class="form-check-input " id="box" type="checkbox" name="remember" > Is Permanent address same as Present address
                        </label>
                    </div>
                </div>
            </div>       
        </div> 
        <h5 class="mt-2  personalDetailsHeader">Permanent Address:</h5>
        <div class="container pt-1 totalMargin">
            <div class="row mt-3">
                <div class="col-md-4">
                    <label class='labelName'>Address Line 1<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus"  name="permanentAddressLine1"  error1='Address' id="permanentAddressLine1"  placeholder="">                         
                    <p id="permanentAddressLine1Error" class="text-danger fieldError"></p> 
                </div> 
                <div class="col-md-4">
                    <label class='labelName'>Address Line 2(optional)</label>
                    <input type="text" class="form-control fieldBorder "  name="permanentAddressLine2"   id="permanentAddressLine2"  placeholder="">                         
                    <p id="permanentAddressLine2Error" class="text-danger"></p> 
                </div>
                <div class="col-md-4">
                    <label class='labelName'>Zip Code<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="permanentZipcode" error1='Zip Code'  id="permanentZipcode"  placeholder="" maxlength="6">                         
                    <p id="permanentZipcodeError" class="text-danger fieldError"></p> 
                </div>  
            </div>
            <div class="row mt-3">
                <div class="col-md-3">
                    <label class="labelName ">State<span class="important">*</span></label>
                    <select class="form-select  w-100 fieldBorder visitors_name fieldFocus allStates" id="permanentState" name="permanentState">
                      <!---  <option value="" default selected></option>
                        <option value="Ap">Andhra Pradesh</option>
                        <option value="assam">Assam</option>
                        <option value="mp">Madhya Pradesh</option>
                        <option value="Ap">Andhra Pradesh</option>
                        <option value="assam">Assam</option>
                        <option value="Andhra Pradesh">Andhra Pradesh</option>
                        <option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
                        <option value="Arunachal Pradesh">Arunachal Pradesh</option>
                        <option value="Assam">Assam</option>
                        <option value="Bihar">Bihar</option>
                        <option value="Chandigarh">Chandigarh</option>
                        <option value="Chhattisgarh">Chhattisgarh</option>
                        <option value="Dadar and Nagar Haveli">Dadar and Nagar Haveli</option>
                        <option value="Daman and Diu">Daman and Diu</option>
                        <option value="Delhi">Delhi</option>
                        <option value="Lakshadweep">Lakshadweep</option>
                        <option value="Puducherry">Puducherry</option>
                        <option value="Goa">Goa</option>
                        <option value="Gujarat">Gujarat</option>
                        <option value="Haryana">Haryana</option>
                        <option value="Himachal Pradesh">Himachal Pradesh</option>
                        <option value="Jammu and Kashmir">Jammu and Kashmir</option>
                        <option value="Jharkhand">Jharkhand</option>
                        <option value="Karnataka">Karnataka</option>
                        <option value="Kerala">Kerala</option>
                        <option value="Madhya Pradesh">Madhya Pradesh</option>
                        <option value="Maharashtra">Maharashtra</option>
                        <option value="Manipur">Manipur</option>
                        <option value="Meghalaya">Meghalaya</option>
                        <option value="Mizoram">Mizoram</option>
                        <option value="Nagaland">Nagaland</option>
                        <option value="Odisha">Odisha</option>
                        <option value="Punjab">Punjab</option>
                        <option value="Rajasthan">Rajasthan</option>
                        <option value="Sikkim">Sikkim</option>
                        <option value="Tamil Nadu">Tamil Nadu</option>
                        <option value="Telangana">Telangana</option>
                        <option value="Tripura">Tripura</option>
                        <option value="Uttar Pradesh">Uttar Pradesh</option>
                        <option value="Uttarakhand">Uttarakhand</option>
                        <option value="West Bengal">West Bengal</option>--->
                    </select>
                    <div class="text-danger fieldError" id="permanentStateError"></div>
                </div>
                <div class="col-md-4 offset-md-1">
                    <label class='labelName'>City<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder  visitors_name fieldFocus charOnly"  name="permanentCity" error1='City'   id="permanentCity"  placeholder="">                         
                    <p id="permanentCityError" class="text-danger fieldError"></p> 
                </div>
                <div class="col-md-4">
                    <label class='labelName'>Phone Number<span class="important">*</span></label>
                    <input type="text" class="form-control fieldBorder visitors_name fieldFocus numOnly"  name="permanentPhone" error1='Phone Number'  id="permanentPhone"  placeholder="" maxlength="10">                         
                    <p id="permanentPhoneError" class="text-danger fieldError"></p> 
                </div>  
            </div>
            <div class="row mt-3">
                <div class='col-md-4 ps-3 mt-2 text-primary h5'> Click Here to Upload Documents<span class="important">*</span>
                </div> 
                <div class='col-md-3'>
                    <input type='file' class="form-control fieldBorder  fieldFocus"   multiple maxlength="10" id="file_input" name="file_input"  >                   
                    <p id="file_inputError" class="text-danger fieldError"></p>
                </div>
            </div> 
            <div class="row mt-3">
                <div class="col-md-1 offset-md-5">
                <button type="button" class="btn btn-outline-primary" id="submitBtn">Submit</button>
                </div>
            </div>      
        </div>
        
        <div class="modal" id="myModal">
            <div class="modal-dialog">
                <div class="modal-content">                  
                    <div class="modal-header">
                        <h4 class="modal-title"></h4>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" id="modalHide"></button>
                    </div>
                    <!-- Modal body -->
                    <div class="modal-body">
                        Records already exists
                    </div>
                    <!-- Modal footer -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-danger" id="modelclosebtn" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>      
    </form>
</div>  



