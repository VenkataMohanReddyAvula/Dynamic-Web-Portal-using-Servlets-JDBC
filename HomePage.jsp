<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="java.util.*" %>
<%
    Connection connection = null;
    String connectionUrl = "jdbc:mysql://localhost:3306/website_master";
    ResultSet rs = null;
    Statement statement = null;

    try {
        Map<String, String> websiteItems = new HashMap<String, String>();
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(connectionUrl, "root", "WJ28@krhps");
        statement = connection.createStatement();
        rs = statement.executeQuery("SELECT * FROM page_master");

        while (rs.next()) {
            websiteItems.put(rs.getString(2), rs.getString(3));
        }

        if (websiteItems.size() > 0) {
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>SPW | Title Name</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css">
    <style>
        .color-teal { color: teal !important; }
        .icon-lg { font-size: 50px; }
        .icon-sm { font-size: 25px; }
        .no-underline { text-decoration: none; }
    </style>
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="container-fluid">
                <a href="#" class="navbar-brand"><img src="<%= websiteItems.get("logo") %>" height="40px"></a>
                <button class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbar1">
                    <i class="bi bi-list"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbar1">
                    <div class="navbar-nav ms-auto">
                        <a href="index.jsp" class="nav-item nav-link active">Home</a>
                        <a href="#about-us" class="nav-item nav-link">About Us</a>
                        <a href="#contact-us" class="nav-item nav-link">Contact Us</a>
                    </div>
                </div>
            </div>
        </nav>

        <div id="carousel" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#carousel" data-bs-slide-to="2"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="<%= websiteItems.get("carousel_One") %>" class="d-block w-100" style="max-height:100vh;">
                </div>
                <div class="carousel-item">
                    <img src="<%= websiteItems.get("carousel_Two") %>" class="d-block w-100" style="max-height:100vh;">
                </div>
                <div class="carousel-item">
                    <img src="<%= websiteItems.get("carousel_Three") %>" class="d-block w-100" style="max-height:100vh;">
                </div>
            </div>
            <button class="carousel-control-prev" data-bs-target="#carousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" data-bs-target="#carousel" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>
    </header>

    <main>
        <section class="container mt-4" id="about-us">
            <h6 class="display-5 text-center">About Us</h6>
            <div class="row mt-5 mb-5">
                <div class="col-md-5">
                    <img src="<%= websiteItems.get("about_us") %>" class="d-block w-100">
                </div>
                <div class="col-md-7">
                    <p>Welcome to InnovateTech Solutions! We are a dynamic team dedicated to driving technological innovation...</p>
                </div>
            </div>
        </section>

        <section class="mt-5 mb-5">
            <h6 class="display-5 text-center mb-5">What Makes Us Unique</h6>
            <div class="row">
                <div class="col-md-4 text-center">
                    <i class="bi bi-person-arms-up color-teal icon-lg"></i>
                    <p>CUSTOM TAILORED USER OPTIONS</p>
                </div>
                <div class="col-md-4 text-center">
                    <i class="bi bi-shield-lock color-teal icon-lg"></i>
                    <p>PRIVACY FIRST APPROACH</p>
                </div>
                <div class="col-md-4 text-center">
                    <i class="bi bi-list color-teal icon-lg"></i>
                    <p>MULTIPLE VARIANTS</p>
                </div>
            </div>
        </section>

        <section id="team" class="container mt-4">
            <h6 class="display-5 text-center mb-5">OUR INNOVATIVE TEAM</h6>
            <div class="row">
                <div class="col-md-4 d-flex justify-content-center">
                    <div class="card" style="width:300px">
                        <img class="card-img-top" src="<%= websiteItems.get("team_member-one") %>">
                        <div class="card-body text-center">
                            <h4>TEAM MEMBER 1</h4>
                            <p>AI Developer</p>
                            <i class="bi bi-facebook icon-sm m-2"></i>
                            <i class="bi bi-instagram icon-sm m-2"></i>
                            <i class="bi bi-linkedin icon-sm m-2"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex justify-content-center">
                    <div class="card" style="width:300px">
                        <img class="card-img-top" src="<%= websiteItems.get("team_member-two") %>">
                        <div class="card-body text-center">
                            <h4>TEAM MEMBER 2</h4>
                            <p>Project Manager</p>
                            <i class="bi bi-facebook icon-sm m-2"></i>
                            <i class="bi bi-instagram icon-sm m-2"></i>
                            <i class="bi bi-linkedin icon-sm m-2"></i>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 d-flex justify-content-center">
                    <div class="card" style="width:300px">
                        <img class="card-img-top" src="<%= websiteItems.get("team_member-three") %>">
                        <div class="card-body text-center">
                            <h4>TEAM MEMBER 3</h4>
                            <p>Data Analyst</p>
                            <i class="bi bi-facebook icon-sm m-2"></i>
                            <i class="bi bi-instagram icon-sm m-2"></i>
                            <i class="bi bi-linkedin icon-sm m-2"></i>
                        </div>
                    </div>
                </div>
            </div>
        </section>

        <section id="contact-us" class="container mt-5 mb-5">
            <h6 class="display-5 text-center mb-5">CONTACT US</h6>
            <div class="row">
                <div class="col-md-6">
                    <div class="container mt-3">
                        <p class="text-muted fs-3 text-center">Our Contact Info</p>
                        <p class="fs-4 text-black-50 text-center">Our Email</p>
                        <p class="fs-5 text-black text-center">someone@something.com</p>
                        <p class="fs-4 text-black-50 text-center">Our Phone No.</p>
                        <p class="fs-5 text-black text-center">9799067961</p>
                        <p class="fs-4 text-black-50 text-center">Our Address</p>
                        <p class="fs-4 text-black text-center">NEW CITY, NEW YORK</p>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card shadow">
                        <div class="card-body">
                            <form>
                                <div class="form-group">
                                    <label for="name">Enter Your Name</label>
                                    <input type="text" class="form-control" id="name">
                                </div>
                                <div class="form-group">
                                    <label for="email">Enter Your Email</label>
                                    <input type="text" class="form-control" id="email">
                                </div>
                                <div class="form-group">
                                    <label for="subject">Enter Your Subject</label>
                                    <input type="text" class="form-control" id="subject">
                                </div>
                                <div class="form-group">
                                    <label for="message">Enter Your Message</label>
                                    <textarea class="form-control" id="message"></textarea>
                                </div>
                                <div class="form-group text-center mt-3">
                                    <input type="submit" class="btn btn-outline-dark" value="Send Message">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="bg-dark mt-5">
        <div class="container">
            <div class="row">
                <div class="col-md-6 mt-5">
                    <img src="<%= websiteItems.get("logo") %>" height="40px" class="bg-white">
                    <p class="text-white">
                        © 2024 InnovateTech Solutions | Follow us: 
                        <a href="#" class="text-white">Facebook</a>, 
                        <a href="#" class="text-white">LinkedIn</a>, 
                        <a href="#" class="text-white">Instagram</a> |
                        Contact: someone@something.com, +91 9799067961
                    </p>
                </div>
                <div class="col-md-6 mt-5">
                    <p class="text-white fs-5">Quick Links</p>
                    <ul>
                        <li><a href="#" class="text-white no-underline">About Us</a></li>
                        <li><a href="#" class="text-white no-underline">Contact Us</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
<%
        } else {
            out.println("No data found.");
        }
    } catch (Exception e) {
        out.println("Exception Occurred: " + e);
    }
%>
