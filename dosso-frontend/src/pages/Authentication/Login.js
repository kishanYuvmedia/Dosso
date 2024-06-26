import PropTypes from "prop-types";
import React from "react";
import { Row, Col, CardBody, Card, Alert, Container, Form, Input, FormFeedback, Label } from "reactstrap";
//redux
import { useSelector, useDispatch } from "react-redux";
import { Link } from "react-router-dom";
import withRouter from "components/Common/withRouter";
// Formik validation
import * as Yup from "yup";
import { useFormik } from "formik";
import { loginUser } from "../../store/actions";
let profile = "../../Assets/images/Dosso21-logo-new.webp";
const Login = props => {
  //meta title
  document.title = "Login";
  const dispatch = useDispatch();
  const validation = useFormik({
    // enableReinitialize : use this flag when initial values needs to be changed
    enableReinitialize: true,
    initialValues: {
      mobileNumber: "6375475956" || '',
      password: "123456" || '',
    },
    validationSchema: Yup.object({
      mobileNumber: Yup.string().required("Please Enter Your Mobile Number"),
      password: Yup.string().required("Please Enter Your Password"),
    }),
    onSubmit: (values) => {
      dispatch(loginUser(values, props.router.navigate));
    }
  });
  const { error } = useSelector(state => ({
    error: state.Login.error,
  }));
  return (
    <React.Fragment>
      <div className="home-btn d-none d-sm-block">
        <Link to="/" className="text-dark">
          <i className="bx bx-home h2" />
        </Link>
      </div>
      <div className="account-pages d-grid align-items-center" style={{ height: "100vh", backgroundColor: "#fff" }}>
        <Container>
          <Row className="justify-content-center">
            <Col md={8} lg={6} xl={5}>
              <Card className="overflow-hidden" style={{ border: 0, }}>
                <div className="border-bottom">
                  <Row>
                    <Col xs={7}>
                      <div className="text-secondary p-4">
                        <h4 className="text-black">Welcome Back !</h4>
                        <p>Sign in to continue to Dosso 21.</p>
                      </div>
                    </Col>
                    <Col className="col-5 text-center align-self-end">
                      <img src={profile} alt="" className="" height="110" />
                    </Col>
                  </Row>
                </div>
                <CardBody className="text-black" >
                  <div className="p-2">
                    <Form
                      className="form-horizontal"
                      onSubmit={(e) => {
                        e.preventDefault();
                        validation.handleSubmit();
                        return false;
                      }}
                    >
                      {error ? <Alert color="danger">{error}</Alert> : null}

                      <div className="mb-3">
                        <Label className="form-label">Enter Unique ID</Label>
                        <Input
                          name="Mobile"
                          className="form-control"
                          placeholder="Enter Mobile"
                          type="number"
                          onChange={validation.handleChange}
                          onBlur={validation.handleBlur}
                          value={validation.values.Mobile || ""}
                          invalid={
                            validation.touched.Mobile && validation.errors.Mobile ? true : false
                          }
                        />
                        {validation.touched.Mobile && validation.errors.Mobile ? (
                          <FormFeedback type="invalid">{validation.errors.Mobile}</FormFeedback>
                        ) : null}
                      </div>

                      <div className="mb-3">
                        <Label className="form-label">Password</Label>
                        <Input
                          name="password"
                          value={validation.values.password || ""}
                          type="password"
                          placeholder="Enter Password"
                          onChange={validation.handleChange}
                          onBlur={validation.handleBlur}
                          invalid={
                            validation.touched.password && validation.errors.password ? true : false
                          }
                        />
                        {validation.touched.password && validation.errors.password ? (
                          <FormFeedback type="invalid">{validation.errors.password}</FormFeedback>
                        ) : null}
                      </div>

                      <div className="form-check">
                        <input
                          type="checkbox"
                          className="form-check-input"
                          id="customControlInline"
                        />
                        <label
                          className="form-check-label"
                          htmlFor="customControlInline"
                        >
                          Remember me
                        </label>
                      </div>

                      <div className="mt-3 d-grid">
                        <button
                          className="btn btn-secondary btn-white text-black fw-3"
                          type="submit"
                        >
                          Log In
                        </button>
                      </div>

                      {/* <div className="mt-4 text-center">
                        <h5 className="font-size-14 mb-3">Sign in with</h5> 

                        <ul className="list-inline">
                            <li className="list-inline-item">
                              <FacebookLogin
                                appId={facebook.APP_ID}
                                autoLoad={false}
                                callback={facebookResponse}
                                render={renderProps => (
                                  <Link
                                    to="#"
                                    className="social-list-item bg-primary text-white border-primary"
                                    onClick={renderProps.onClick}
                                  >
                                    <i className="mdi mdi-facebook" />
                                  </Link>
                                )}
                              />
                            </li> 
                        <li className="list-inline-item">
                          <TwitterLogin
                            loginUrl={
                              "http://localhost:4000/api/v1/auth/twitter"
                            }
                            onSuccess={this.twitterResponse}
                            onFailure={this.onFailure}
                            requestTokenUrl={
                              "http://localhost:4000/api/v1/auth/twitter/revers"
                            }
                            showIcon={false}
                            tag={"div"}
                          >
                            <a
                              href=""
                              className="social-list-item bg-info text-white border-info"
                            >
                              <i className="mdi mdi-twitter" />
                            </a>
                          </TwitterLogin>
                        </li>
                        <li className="list-inline-item">
                              <GoogleLogin
                                clientId={google.CLIENT_ID}
                                render={renderProps => (
                                  <Link
                                    to="#"
                                    className="social-list-item bg-danger text-white border-danger"
                                    onClick={renderProps.onClick}
                                  >
                                    <i className="mdi mdi-google" />
                                  </Link>
                                )}
                                onSuccess={googleResponse}
                                onFailure={() => { }}
                              />
                            </li> 
                        </ul>
                      </div> */}

                      <div className="mt-4 text-center">
                        <Link to="/forgot-password" className="text-muted">
                          <i className="mdi mdi-lock me-1" />
                          Forgot your password?
                        </Link>
                      </div>
                    </Form>
                  </div>
                </CardBody>
              </Card>
              <div className="mt-5 text-center">
                <p>
                  Don&#39;t have an account ?{" "}
                  <Link to="/register" className="fw-medium text-secondary">
                    {" "}
                    Signup now{" "}
                  </Link>{" "}
                </p>
                <p>
                  © {new Date().getFullYear()} Dosso21. Developed with{" "}
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

export default withRouter(Login);

Login.propTypes = {
  history: PropTypes.object,
};
