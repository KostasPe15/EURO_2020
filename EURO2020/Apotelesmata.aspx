<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Apotelesmata.aspx.cs" Inherits="Apotelesmata" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .auto-style1 {
            color: #CC3300;
        }
        .auto-style2 {
            width: 43%;
            height: 51px;
        }
        .auto-style3 {
            width: 151px;
        }
        .auto-style4 {
            width: 59px;
        }
        .auto-style5 {
            width: 61px;
        }
        .auto-style6 {
            width: 213px;
        }
        .auto-style7 {
            width: 151px;
            height: 26px;
        }
        .auto-style8 {
            width: 59px;
            height: 26px;
        }
        .auto-style9 {
            width: 61px;
            height: 26px;
        }
        .auto-style10 {
            width: 213px;
            height: 26px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1">EURO 2020</h1>
        <p class="auto-style1">
            <a href="Default.aspx">Αρχική</a>&nbsp; -&nbsp; <a href="Stadia.aspx">Στάδια</a> -<a href="Apotelesmata.aspx"> Αποτελέσματα</a></p>
    
    </div>
        <p class="auto-style1">
            &nbsp;</p>
        <p>
            Δώστε αριθμό παιχνιδιου (1-51):
            <asp:TextBox ID="TextBox1" runat="server" Width="31px"></asp:TextBox>
        </p>
        <p>
            (ή επιλέξτε ομάδες)</p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Αποτέλεσμα" />
        </p>
        <p>
            &nbsp;</p>
        <table class="auto-style2">
            <tr>
                <td class="auto-style7">
                    <asp:DropDownList ID="lstTeamNames" runat="server" Height="20px" OnSelectedIndexChanged="lstTeamNames_SelectedIndexChanged" Width="178px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style8">
                    <asp:Label ID="lblScore1" runat="server"></asp:Label>
                </td>
                <td class="auto-style9"></td>
                <td class="auto-style10">
                    <asp:Label ID="lblPen1" runat="server"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">&nbsp;</td>
                <td class="auto-style4">&nbsp;</td>
                <td class="auto-style5">
                    <asp:Label ID="lblPenalty" runat="server" Text="Πέναλτυ" Visible="False"></asp:Label>
                </td>
                <td class="auto-style6">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:DropDownList ID="lstTeam2Names" runat="server" Height="18px" OnSelectedIndexChanged="lstTeam2Names_SelectedIndexChanged" Width="168px">
                    </asp:DropDownList>
                </td>
                <td class="auto-style4">
                    <asp:Label ID="lblScore2" runat="server"></asp:Label>
                </td>
                <td class="auto-style5">&nbsp;</td>
                <td class="auto-style6">
                    <asp:Label ID="lblPen2" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
