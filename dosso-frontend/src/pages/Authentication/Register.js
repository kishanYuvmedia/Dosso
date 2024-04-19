import React, { useEffect, useState } from "react";
import { Row, Col, CardBody, Card, Alert, Container, Input, Label, Form, FormFeedback } from "reactstrap";
import OTPInput from 'react-otp-input';
import * as Yup from "yup";
import { useFormik } from "formik";
import { registerUser, apiError } from "../../store/actions";
import { useSelector, useDispatch } from "react-redux";
import { Link } from "react-router-dom";
let logoImg = "../../../Assets/images/Dosso_21_logo.webp";

const Register = props => {
  document.title = "Registration";

  const [generatedOTP, setGeneratedOTP] = useState('');
  const [enteredOTP, setEnteredOTP] = useState('');
  const [showOTPInput, setShowOTPInput] = useState(false);
  const dispatch = useDispatch();

  const validation = useFormik({
    enableReinitialize: true,
    initialValues: {
      email: '',
      username: '',
      password: '',
      referral: 'adminCode',
      mobilenumber: '',
    },
    validate: (values) => {
      const errors = {};

      // Email validation
      if (!values.email) {
        errors.email = 'Please Enter Valid Email';
      } else if (!/^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i.test(values.email)) {
        errors.email = 'Invalid email address';
      }

      // Username validation
      if (!values.username) {
        errors.username = 'Required';
      } else if (values.username.length < 3) {
        errors.username = 'Username must be at least 3 characters long';
      }

      // Password validation
      if (!values.password) {
        errors.password = 'Required';
      } else if (values.password.length < 5) {
        errors.password = 'Password must be at least 5 characters long';
      }

      // Mobile number validation (assuming it should be exactly 10 digits)
      if (!values.mobilenumber) {
        errors.mobilenumber = 'Please Enter 10 Digit Number';
      } else if (!/^\d{10}$/i.test(values.mobilenumber)) {
        errors.mobilenumber = 'Mobile number must be 10 digits';
      }

      return errors;
    },

    // validationSchema: Yup.object({
    //   email: Yup.string().email('Invalid email').required('Required'),
    //   username: Yup.string().min(3, 'Too Short!').max(50, 'Too Long!').required("Please Enter Your Username"),
    //   password: Yup.string().min(5, 'Too Short!').max(50, 'Too Long!').required("Please Enter Your Password"),
    //   mobilenumber: Yup.string().min(10, 'Too Short!').max(10, 'Too Long!').required("Please Enter Your Mobile Number"),
    // }),
    // onSubmit: (values) => {
    //   dispatch(registerUser(values));
    // }
  });

  const { isValid } = validation;

  const generateOTP = () => {
    const errors = {};
    if (validation.isValid
    ) {
      const digits = '0123456789';
      let randomOTP = '';
      for (let i = 0; i < 6; i++) {
        randomOTP += digits[Math.floor(Math.random() * 10)];
      }
      setGeneratedOTP(randomOTP);
      console.log('Generated OTP:', randomOTP);
      setShowOTPInput(true);
    } else {
      console.log('Please correct the form errors before generating OTP or ensure mobile number is 10 digits and contains only digits');     
    
      
    }
    
  };



  const handleChange = otp => {
    setEnteredOTP(otp);
    console.log('enteredOTP:', otp);
  };

  const verifyOTP = () => {
    if (enteredOTP === generatedOTP) {
      console.log('OTP Verified Successfully');

      dispatch(registerUser(validation.values));

    } else {
      console.log('Incorrect OTP');
      setErrorMessage('Incorrect OTP. Please try again.');
    }
  };


  const { user, registrationError } = useSelector(state => ({
    user: state.Account.user,
    registrationError: state.Account.registrationError,
  }));

  useEffect(() => {
    dispatch(apiError(""));
  }, [dispatch]);


  return (
    <React.Fragment>
      <div className="home-btn   d-sm-block">
        <Link to="/" className="text-dark">
          <i className="bx bx-home h2" />
        </Link>
      </div>
      <div className="account-pages d-grid align-items-center py-5" style={{ backgroundColor: "#222736" }}>
        <Container>
          <Row className="justify-content-center">
            <Col md={8} lg={6} xl={5}>
              <Card className="overflow-hidden">
                <div className="" style={{ backgroundColor: "#2A3042" }}>
                  <Row>
                    <Col className="col-7">
                      <div className="text-warning p-4">
                        <h5 className="text-warning">Free Register</h5>
                        <p>Get your free Dosso21 account now.</p>
                      </div>
                    </Col>
                    <Col className="col-5 text-center align-self-end">
                      <img src={logoImg} alt="" className="" height="110" />
                    </Col>
                  </Row>
                </div>
                <CardBody className="text-white" style={{ backgroundColor: "#2A3042" }}>
                  <div className="p-2">

                    <Form
                      className="form-horizontal"
                      onSubmit={(e) => {
                        e.preventDefault();
                        // validation.handleSubmit();
                        // verifyOTP();
                        // return false;
                      }}
                    >
                      {user ? (
                        <Alert color="success">
                          Register User Successfully
                        </Alert>
                      ) : null}

                      {registrationError ? (
                        <Alert color="danger">{registrationError}</Alert>
                      ) : null}


                      {/* {!showOTPInput && (
                        <> */}
                      <div className="mb-3">
                        <Label className="form-label  ">Email <sup className="text-danger fw-light fs-6">*</sup></Label>
                        <Input
                          id="email"
                          name="email"
                          className="form-control"
                          placeholder="Enter email"
                          type="email"
                          onChange={validation.handleChange}
                          onBlur={validation.handleBlur}
                          value={validation.values.email}
                          invalid={validation.touched.email && validation.errors.email}
                        />
                        <FormFeedback type="invalid">{validation.errors.email}</FormFeedback>
                      </div>

                      <div className="mb-3">
                        <Label className="form-label  ">Username <sup className="text-danger fw-light fs-6">*</sup></Label>
                        <Input
                          name="username"
                          type="text"
                          placeholder="Enter username"
                          onChange={validation.handleChange}
                          onBlur={validation.handleBlur}
                          value={validation.values.username}
                          invalid={validation.touched.username && validation.errors.username}
                        />
                        <FormFeedback type="invalid">{validation.errors.username}</FormFeedback>
                      </div>

                      <div className="mb-3">
                        <Label className="form-label  ">Password <sup className="text-danger fw-light fs-6">*</sup></Label>
                        <Input
                          name="password"
                          type="password"
                          placeholder="Enter Password"
                          onChange={validation.handleChange}
                          onBlur={validation.handleBlur}
                          value={validation.values.password}
                          invalid={validation.touched.password && validation.errors.password}
                        />
                        <FormFeedback type="invalid">{validation.errors.password}</FormFeedback>
                      </div>

                      <div className="mb-3">
                        <Label className="form-label  ">Referral Code <sup className="text-muted">(optional)</sup></Label>
                        <Input
                          name="referralcode"
                          type="text"
                          placeholder="Enter referral code"

                        />
                      </div>

                      <div className="mb-3">
                        <Label className="form-label  ">Mobile Number <sup className="text-danger fw-light fs-6">*</sup></Label>
                        <Input
                          name="mobilenumber"
                          type="tel"
                          maxLength={10}
                          pattern="[0-9]*"
                          inputMode="numeric"
                          placeholder="Enter Mobile Number"
                          onChange={validation.handleChange}
                          onBlur={validation.handleBlur}
                          value={validation.values.mobilenumber}
                          invalid={validation.touched.mobilenumber && validation.errors.mobilenumber}
                        />
                        <FormFeedback type="invalid">{validation.errors.mobilenumber}</FormFeedback>
                      </div>

                      <div className="mt-4 text-center ">
                        <button
                          type="info"
                          className="btn btn-warning px-5 text-black fw-bold btn-block"
                          onClick={generateOTP}
                          disabled={!validation.touched.mobilenumber} 
                        >
                          Get OTP
                        </button>
                      </div>
                      {/* </>
                      )} */}

                      {isValid && showOTPInput && ( // Conditionally render OTP input section
                        <div id="otpinput" className="mt-4 text-center d-grid justify-content-center ">
                          <OTPInput
                            value={enteredOTP}
                            onChange={handleChange}
                            numInputs={6}
                            separator={<span style={{ width: "8px" }}>-</span>}
                            isInputNum={true}
                            shouldAutoFocus={true}
                            renderInput={(props) => <input {...props} />}
                            inputStyle={{
                              border: "1px solid transparent",
                              borderRadius: "2px",
                              width: "40px",
                              height: "40px",
                              fontSize: "16px",
                              color: "#D5A24A",
                              fontWeight: "500",
                              caretColor: "golden",
                              margin: "2px",
                              backgroundColor: "#222736",
                            }}
                            focusStyle={{
                              border: "1px solid golden",
                              outline: "none",
                              color: "#D5A24A",
                              backgroundColor: "#222",

                            }}
                          />
                          <div className="mt-2 d-grid">
                            <button
                              className="btn btn-warning text-black btn-block "
                              type="button"
                              // onClick={verifyOTP}
                              onClick={() => {
                                if (isValid && showOTPInput) { // Check if form is valid and OTP input is shown
                                  verifyOTP(); // Call verifyOTP function on button click
                                } else {
                                  console.log('Please generate OTP and enter it to proceed');
                                }
                              }}
                            >
                              Register
                            </button>
                          </div>
                        </div>
                      )}

                    </Form>



                    <div className="mt-4 text-center text-white">
                      <p className="mb-0">
                        By registering you agree to the Dosso21{" "}
                        <Link to="#" className="text-warning">
                          Terms of Use
                        </Link>
                      </p>
                    </div>
                  </div>
                </CardBody>
              </Card>
              <div className="mt-5 text-center text-white">
                <p>
                  Already have an account ?{" "}
                  <Link to="/login" className="font-weight-medium text-warning">
                    {" "}
                    Login
                  </Link>{" "}
                </p>
                <p>
                  © {new Date().getFullYear()} Dosso21. Crafted with{" "}
                  <i className="mdi mdi-heart text-danger" /> by Yuvmedia.
                </p>
              </div>
            </Col>
          </Row>
        </Container>
      </div>
    </React.Fragment>
  );
};

export default Register;
