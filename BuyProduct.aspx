<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="BuyProduct.aspx.cs" Inherits="Donation_App.BuyProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myImage {
            object-fit: cover;
            object-position: center;
            overflow: hidden;
            min-height: 300px;
            max-height: 350px;
        }

        @media (min-width: 1024px) {
            .myImage {
                width: 35%;
            }
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section class="text-gray-600 body-font overflow-hidden" style="background-color: #bcab9b; border-bottom: 2px solid groove;">
        <div class="container px-5 py-24 mx-auto">
            <div class="lg:w-4/5 mx-auto flex flex-wrap" style="justify-content: center; align-items: center;">
                <asp:Image ID="Image1" CssClass="myImage w-4/5 rounded" ImageUrl="./imgs/Clothes.jpg" runat="server" />
                <div class="lg:w-1/2 w-4/5 lg:pl-10 py-6 mt-6 lg:mt-0">
                    <h1 class="text-gray-900 text-3xl title-font font-medium mb-1">
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </h1>
                    <p class="leading-relaxed text-gray-700">Fam locavore kickstarter distillery. Mixtape chillwave tumeric sriracha taximy chia microdosing tilde DIY. XOXO fam indxgo juiceramps cornhole raw denim forage brooklyn. Everyday carry +1 seitan poutine tumeric. Gastropub blue bottle austin listicle pour-over, neutra jean shorts keytar banjo tattooed umami cardigan.</p>
                    <div class="flex mt-6">
                        <span class="title-font font-medium text-2xl text-gray-900">
                            <asp:Label ID="Label1" runat="server" Text="Free"></asp:Label> 
                        </span>
                        <asp:Button ID="Button1" CssClass="flex justify-center items-center ml-auto text-white bg-blue-500 border-0 py-2 px-6 focus:outline-none hover:bg-blue-600 rounded" runat="server" Text="Contact to Donater" OnClick="Contact_Btn" />
                    </div>
                </div>
            </div>
        </div>
    </section>
    <hr />
    <div class="w-full h-28  imgBox">
        <img src="assets/banner.jpg" class="w-full" />
    </div>
</asp:Content>
