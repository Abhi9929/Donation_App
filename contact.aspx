<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="contact.aspx.cs" Inherits="Donation_App.contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .mainDiv {
            height: calc(100vh - 88px);
            position: absolute;
            top: 88px;
            left: 0;
            z-index: 100;
            width: 100%;
        }

        .myflex {
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .textbox {
            border: 2px solid #333;
            background-color: #606060;
        }

        .auto-style1 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mainDiv w-full flex flex-col bg-gray-100">
        <div class="bg-gradient-to-r from-blue-500 to-purple-500 py-4">
            <h1 class="text-center text-2xl font-bold text-white">Chat with Seller</h1>
        </div>
        <div class="flex-grow chat-area overflow-y-auto pt-2">
            <asp:DataList ID="DataList1" runat="server" Width="100%" DataSourceID="SqlDataSource1">
                <ItemTemplate>
                    <div class="flex flex-col space-y-2 px-4">
                        <asp:Panel ID="Panel1" CssClass="flex items-center self-end rounded-xl rounded-tr bg-blue-500 py-2 px-3 text-white"
                            runat="server" Visible='<%# Eval("MsgFrom").ToString() == "buyer" %>'>
                            <div>
                                <p><%# Eval("Msg") %></p>
                            </div>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server" CssClass="flex items-center self-start rounded-xl rounded-tl bg-gray-300 py-2 px-3"
                            Visible='<%# Eval("MsgFrom").ToString() == "seller" %>'>
                            <div>
                                <p><%# Eval("Msg") %></p>
                            </div>
                        </asp:Panel>
                    </div>
                </ItemTemplate>
            </asp:DataList>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=LAPTOP-4PUON2EE\SQLEXPRESS03;Initial Catalog=donationApp;Integrated Security=True;"

                SelectCommand="SELECT * FROM [Messages] WHERE (([Buyer_Mail] = @Buyer_Mail) AND ([Seller_Mail] = @Seller_Mail) AND ([Product_ID] = @Product_id)) ORDER BY [Msg_Time]">
                <SelectParameters>
                    <asp:SessionParameter Name="Buyer_Mail"
                        SessionField="my_mail" Type="String" />
                    <asp:SessionParameter Name="Seller_Mail" SessionField="seller_mail" Type="String" />
                    <asp:SessionParameter Name="Product_ID" SessionField="product_id" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
        <div class="flex items-center p-4">
            <asp:TextBox ID="TextBox1" AutoCompleteType="Disabled" CssClass="w-full rounded-lg border border-gray-300 px-4 py-2"
                runat="server"></asp:TextBox>
            <asp:LinkButton ID="LinkButton1" CssClass="ml-2 rounded-lg bg-blue-500 px-4 py-2 text-white"
                runat="server" OnClick="Send_Btn">Send</asp:LinkButton>
        </div>
    </div>


    <script>
        var chatArea = document.querySelector('.chat-area');
        chatArea.scrollTop = chatArea.scrollHeight;
    </script>
</asp:Content>
