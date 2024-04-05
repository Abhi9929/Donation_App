<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Products.aspx.cs" Inherits="Donation_App.Products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .myDataList {
/*            display: flex;
            justify-content: space-between;
            gap: 2rem;
            flex-wrap: wrap;
            flex-direction: column;*/
        }
        .auto-style1 {
            margin-top: 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="width: 100%; min-height: calc(100vh - 88px );padding-top: 40px; display: flex; justify-content: center; align-items: flex-start;">

        <asp:DataList ID="DataList1" runat="server" Width="60%" CellPadding="10" 
            CellSpacing="5"  CssClass="auto-style1"  RepeatColumns="3" 
            RepeatDirection="Horizontal" ForeColor="#333333" DataSourceID="SqlDataSource1" 
             >
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="White" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="White" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="White" />
            <ItemTemplate>
                <div class="w-full max-w-sm bg-white border border-gray-200 rounded-lg shadow dark:bg-gray-800 dark:border-gray-700" style="min-width: 270px;">
                    <asp:LinkButton ID="LinkButton1" CssClass="block relative h-64 rounded overflow-hidden" runat="server">
                        <asp:Image ID="Image1" CssClass="object-cover object-center w-full h-full block" ImageUrl='<%# "~/Images/" + Eval("Images") %>' runat="server" />
                    </asp:LinkButton>
                    <div class="px-5 pb-5">
                        <a href="#">
                            <h5 class="text-xl font-semibold tracking-tight text-gray-900 dark:text-white">
                                <asp:Label ID="Label2" runat="server" Text='<%# Eval("ProductName") %>'></asp:Label>
                            </h5>
                        </a>
                        <div class="mt-2">
                            <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">
                                <asp:Label ID="Label3" runat="server" Text='<%# Eval("ProductID") %>'></asp:Label>
                            </h3>
                        </div>
                        <div class="mt-2">
                            <h3 class="text-gray-500 text-xs tracking-widest title-font mb-1">
                                <asp:Label ID="Label4" runat="server" Text='<%# Eval("SellerName") %>'></asp:Label>
                            </h3>
                        </div>
                        <div class="flex items-center justify-between">
                            <span class="text-2xl font-bold text-gray-900 dark:text-white">
                                <asp:Label ID="Label1" runat="server" Text='<%# Eval("Price") %>'></asp:Label>
                            </span>
                            <asp:LinkButton ID="LinkButton2" runat="server" CommandName='<%#Eval("ProductID") %>' OnCommand="BuyProduct" Text="Buy Now" CssClass="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800">
                            </asp:LinkButton>
                        </div>
                    </div>
                </div>
            </ItemTemplate>
            <SelectedItemStyle BackColor="White" Font-Bold="True" ForeColor="#333333" />
        </asp:DataList>


        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="Data Source=LAPTOP-4PUON2EE\SQLEXPRESS03;Initial Catalog=donationApp;Integrated Security=True;" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>


    </div>


</asp:Content>
