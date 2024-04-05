<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true"
    CodeBehind="mydonation.aspx.cs" Inherits="Donation_App.mydonation" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .myContainer {
            width: 100%;
            height: calc(100vh - 88px);
            position: relative;
        }

        .wrapper {
            position: absolute;
            width: 100%;
            min-height: 100%;
            z-index: 100;
            padding-top: 20px;
            backdrop-filter: blur(100px);
        }

        .myBtn {
            width: fit-content;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="myContainer">
        <div class="wrapper">
            <asp:Panel ID="Panel1" CssClass="text-center" Visible="false" runat="server">
                <h1>No Donation Yet  
                </h1>
                <br />
                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="myBtn flex mx-auto mt-3 text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg"
                    OnClick="LinkButton1_Click">Donate Now</asp:LinkButton>
            </asp:Panel>



            <asp:GridView ID="GridView1" runat="server" Width="100%" CellPadding="4" ForeColor="#333333"
                GridLines="None" AutoGenerateColumns="false">
                <Columns>
                    <asp:TemplateField HeaderText="Product Name">
                        <ItemTemplate>
                            <%#Eval("ProductName") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Price">
                        <ItemTemplate>
                            <%#Eval("Price") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <ItemTemplate>
                            <%#Eval("Category") %>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Image">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "~/Images/" + Eval("Images") %>'
                                Width="75" ImageAlign="Middle" />
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Inquiry">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton2" CssClass="linkBtn" runat="server" CommandName='<%#Eval("ProductID") %>' OnCommand="BuyersList" Text="Check" >
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
