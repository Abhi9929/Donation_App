<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="Donation_App.register" %>

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
    <style>
        body {
            background: linear-gradient(45deg, #ff6b6b, #556270, #ff6b6b, #4ecdc4); /* Gradient background */
            background-size: 400% 400%; /* Background size for the animation */
            animation: gradientAnimation 15s ease infinite; /* Animation for the gradient */
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
        }

        @keyframes gradientAnimation {
            0% {
                background-position: 0% 50%;
            }

            50% {
                background-position: 100% 50%;
            }

            100% {
                background-position: 0% 50%;
            }
        }


        .myDiv {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .my-span {
            padding-top: 15px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container myDiv">
            <div class="card bg-light">
                <article class="card-body mx-auto" style="min-width: 360px;">
                    <h4 class="card-title mt-3 text-center">Create Account</h4>
                    <p class="text-center">Get started with your free account</p>
                    <div class="form-group input-group mb-3 ">
                        <div class="input-group-prepend">
                            <span class="my-span my-span input-group-text"><i class="fa fa-user"></i></span>
                        </div>
                        <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <!-- form-group// -->
                    <div class="form-group input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="my-span input-group-text"><i class="fa fa-envelope "></i></span>
                        </div>
                        <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <!-- form-group// -->
                    <div class="form-group input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="my-span input-group-text"><i class="fa fa-phone"></i></span>
                        </div>
                        <asp:TextBox ID="TextBox3" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <div class="form-group input-group mb-3">
                        <div class="input-group-prepend">
                            <span class="my-span input-group-text"><i class="fa fa-lock"></i></span>
                        </div>
                        <asp:TextBox ID="TextBox4" CssClass="form-control" runat="server"></asp:TextBox>
                    </div>
                    <!-- form-group// -->
                    <div class="form-group" style="text-align: center;">
                        <asp:Button ID="Button1" CssClass="btn btn-primary btn-block" runat="server" Text="Create Account "
                            OnClick="Button1_Click" />
                    </div>
                    <p class="text-center my-4">
                        Have an account?
                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/login.aspx" runat="server">Login</asp:HyperLink>
                    </p>
                </article>
            </div>
        </div>
    </form>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
        crossorigin="anonymous"></script>

</body>
</html>
