<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="Donation_App.about" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        section {
            height: calc(100vh - 88px);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="flex items-center bg-stone-100  font-poppins dark:bg-gray-800 ">
        <div class="justify-center flex-1 max-w-6xl py-4 mx-auto lg:py-6 md:px-6">
            <div class="flex flex-wrap ">
                <div class="w-full px-4 mb-10 lg:w-1/2 lg:mb-0">
                    <span class="text-xs font-semibold text-blue-400 uppercase">Who we are</span>
                    <h2 class="mt-2 mb-6 text-2xl font-bold dark:text-gray-300">We are the large business expert in Europe and Asia</h2>
                    <p class="mb-10 text-gray-600 dark:text-gray-400 ">
                        Lorem ipsum dolor sit amet, consectetur domino act Lorem ipsum dolor sit amet,
                        consectetur domino act Lorem ipsum dolor sit amet, consectetur domino act
                    </p>
                    <a href="#"
                        class="px-4 py-3 text-gray-100 uppercase transition-all transform bg-blue-400 rounded hover:bg-blue-500 dark:hover:bg-blue-500 dark:hover:text-gray-50 dark:text-gray-100 hover:text-gray-100">About Us
                    </a>
                </div>
                <div class="w-full px-4 mb-10 lg:w-1/2 lg:mb-0">
                    <div class="relative">
                        <asp:Image ID="Image1" CssClass="relative z-10 object-cover w-full h-full rounded" runat="server"  ImageUrl="~/assets/donate2.jpg" />
                        <div
                            class="absolute -bottom-2 right-0 z-10 p-4 bg-white shadow sm:p-8 dark:text-gray-300 dark:bg-gray-800 ">
                            <p class="text-sm font-semibold">
                                Helped 4000+ peoples from past 2 years
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
