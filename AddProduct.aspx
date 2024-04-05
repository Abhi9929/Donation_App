<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Donation_App.AddProduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .table-container {
            width: 100%;
            overflow-x: auto;
            height: calc(100vh - 88px);
            background-color: #bcab9b;
            position: absolute;
            top: 88px;
            left: 0;
            z-index: 10;
            display: flex;
            justify-content: center;
            align-items: center;
            background-image: url("assets/bg.jpg");
            background-position: center;
            background-size: cover;
        }

        table {
            margin: 0 auto;
            width: 50%;
            border: 0;
            border-collapse: collapse;
        }

        td {
            padding: 12px;
            font-size: 20px;
            width: 50%;
            border: 2px solid #ddd;
        }

        .textbox {
            padding: 4px 10px;
            border: none;
        }


        /* Responsive styles */
        @media screen and (max-width: 600px) {
            table {
                border: 0;
            }

                table tr {
                    margin-bottom: 10px;
                    display: block;
                    border: 1px solid #ddd;
                }

                table td {
                    display: block;
                    text-align: right;
                    border: none;
                    position: relative;
                }

        }

        .dropDown {
            width: 246px;
            padding: 4px 8px;
        }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="table-container">

        <table class="">
            <thead>
                <td  style="text-align: center; font-weight: bold; padding: 12px; border: 0; font-size: 30px; color: darkblue;" colspan="2"> 
                    <h1>Become a Donator   </h1>
                </td>
            </thead>
            <tr>
                <td class="text-center"><strong>Product Name</strong></td>
                <td class="text-center">
                    <asp:TextBox ID="TextBox1" CssClass="textbox" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Required" ForeColor="Red" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center"><strong>Category</strong></td>
                <td class="text-center">
                    <asp:DropDownList ID="DropDownList1"  CssClass="dropDown" AppendDataBoundItems="true" runat="server">
                        <asp:ListItem>Books</asp:ListItem>
                        <asp:ListItem>Clothes</asp:ListItem>
                        <asp:ListItem>Shoes</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="DropDownList1" ErrorMessage="Required" ForeColor="Red" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center"><strong>Price</strong></td>
                <td class="text-center">
                    <asp:TextBox ID="TextBox3" CssClass="textbox" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required" ForeColor="Red" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center"><strong>Picture</strong></td>
                <td class="text-center">
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <br />
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="Required" ForeColor="Red" ValidationGroup="Validation"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="text-center" colspan="2">
                    <asp:Button ID="Button2" CssClass="flex mx-auto mt-3 text-white bg-blue-500 border-0 py-2 px-8 focus:outline-none hover:bg-blue-600 rounded text-lg" runat="server" OnClick="Button2_Click" Text="Add" ValidationGroup="Validation" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
