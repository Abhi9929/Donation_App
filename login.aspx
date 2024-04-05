<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Donation_App.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
        rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
        crossorigin="anonymous" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css"
        integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <section class="vh-100" style="background-color: #9A616D;">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col col-xl-10">
                            <div class="card" style="border-radius: 1rem;">
                                <div class="row g-0">
                                    <div class="col-md-6 col-lg-5 d-none d-md-block">
                                        <img src="./assets/donate2.jpg"
                                            alt="login form" class="img-fluid" style="border-radius: 1rem 0 0 1rem; margin-top: 140px;" />
                                    </div>
                                    <div class="col-md-6 col-lg-7 d-flex align-items-center">
                                        <div class="card-body p-4 p-lg-5 text-black">



                                            <div class="d-flex align-items-center mb-3 pb-1">
                                                <img src="assets/logo.png" alt="logo" style="margin-right: 15px; width: 70px;" />
                                                <span class="h1 fw-bold mb-0">Welcome to
                                                    <br />
                                                    Donator</span>
                                            </div>

                                            <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Sign into your account
                                            </h5>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control form-control-lg"></asp:TextBox>
                                                <label class="form-label" for="TextBox1">Username</label>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                                                    ErrorMessage="RequiredFieldValidator" ValidationGroup="login">Required</asp:RequiredFieldValidator>
                                            </div>

                                            <div class="form-outline mb-4">
                                                <asp:TextBox ID="TextBox2" runat="server" CssClass="form-control form-control-lg"
                                                    TextMode="Password"></asp:TextBox>
                                                <label class="form-label" for="TextBox2">Password</label>
                                                <br />
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                                                    ErrorMessage="RequiredFieldValidator" ValidationGroup="login">Required</asp:RequiredFieldValidator>
                                            </div>

                                            <div class="pt-1 mb-4">

                                                <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn btn-dark btn-lg btn-block"
                                                    ValidationGroup="login" OnClick="Button1_Click" />
                                            </div>

                                            <p class="mt-4">
                                                <asp:HyperLink ID="HyperLink1" NavigateUrl="~/register.aspx" runat="server" Text="Create an account?"></asp:HyperLink>
                                            </p>
                                            <a href="#!" class="small text-muted">Terms of use.</a>
                                            <a href="#!" class="small text-muted">Privacy policy</a>


                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>
</body>
</html>

