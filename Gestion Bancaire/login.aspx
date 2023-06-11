<%@ Page Title="" Language="C#" MasterPageFile="~/TopHeader.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Gestion_Bancaire.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, pink,gray);
            background-size: cover;
        }

        #formContainer {

            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        .loginForm {
            background: linear-gradient(to bottom, pink, gray);
            padding: 30px;
            max-width: 1200px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.3);
            color: white;
            width: 100%; /* Remplit toute la largeur du conteneur */
            height: 92%;
        }

        .loginForm h4 {
            margin-bottom: 20px;
            text-align: center;
        }

        .loginForm table {
            margin: 0 auto;
        }

        .loginForm td {
            padding: 5px;
        }

        .loginForm #error {
            color: red;
            margin-top: 10px;
        }

        .nav-item {
            padding: 6px 40px;
            color: white;
            font-family: "Verdana", sans-serif;
            font-size: 16px;
        }

        /* Exemple de style pour les boutons */
        .loginForm .btn {
            background-color: gray;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }

        /* Exemple de style pour les icônes */
        .loginForm .icon {
            /* Votre style d'icône ici */
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="formContainer">
        <div class="loginForm">
            <table>
                <tr>
                    <td colspan="4" align="center">
                        <h4>Login</h4>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtUsername" runat="server" Height="28px" Width="200px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*" ForeColor="Red"
                            ControlToValidate="txtUsername" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td style="padding-right: 40px"></td>
                    <td>
                        <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn" OnClick="btnRegister_Click"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="txtPassword" runat="server" Height="28px" Width="200px" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*" ForeColor="Red"
                            ControlToValidate="txtPassword" SetFocusOnError="true" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <td colspan="4" style="padding-left: 77px">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn" OnClick="btnLogin_Click"/>
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <div id="error" runat="server" style="color: red"></div>
                    </td>
                    <td>
                        <asp:LinkButton ID="lbForgotPassword" runat="server" Height="28px" CausesValidation="false"
                            OnClick="lbForgotPassword_Click" CssClass="nav-item">Forgot Password</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
    </div>
</asp:Content>
