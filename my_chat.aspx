 <%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="my_chat.aspx.cs" Inherits="Donation_App.my_chat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myContainer {
            width: 100%;
            height: calc(100vh - 88px);
            position: relative;
        }

        .wrapper {
            width: 100%;
            min-height: 100%;
            z-index: 100;
            padding-top: 20px;
            position: absolute;
            backdrop-filter: blur(100px);
        }

        .myBtn {
            width: fit-content;
        }

        .myGrid {
            margin: 0 auto;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myContainer">
        <div class="wrapper">
            <asp:Panel ID="Panel1" CssClass="text-center" Visible="false" runat="server">
                <h1>No Chat Yet  
                </h1>
                <br />

            </asp:Panel>



            <asp:GridView ID="GridView1" runat="server" CssClass="myGrid" Width="60%" CellPadding="4"
                ForeColor="#333333"
                GridLines="None" AutoGenerateColumns="False" Height="40px">
                <Columns>
                    <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <%#Eval("ProductName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Seller Mail">
                        <ItemTemplate>
                            <%#Eval("Seller_Mail") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Message">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" runat="server" CssClass="linkBtn" CommandName='<%#Eval("Seller_Mail") %>'
                                OnCommand="ChatWithSeller"
                                Text="Chat">
                            </asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                </Columns>
                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#f7f6f3" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" Height="50px"
                    Font-Size="Larger" HorizontalAlign="Center" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" Wrap="true" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" Height="40px" Wrap="true" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#f7f6f3" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#f7f6f3" />
                <SortedAscendingHeaderStyle BackColor="#f7f6f3" />
                <SortedDescendingCellStyle BackColor="#f7f6f3" />
                <SortedDescendingHeaderStyle BackColor="#f7f6f3" />
            </asp:GridView>
        </div>
    </div>
</asp:Content>
