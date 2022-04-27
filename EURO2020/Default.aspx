<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            color: #CC3300;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1 class="auto-style1">EURO 2020</h1>
        <p class="auto-style1">
            <a href="Default.aspx">Αρχική</a>&nbsp; -&nbsp; <a href="Stadia.aspx">Στάδια</a> -<a href="Apotelesmata.aspx"> Αποτελέσματα</a></p>
        <p class="auto-style1">
            &nbsp;</p>
        <asp:DropDownList ID="lstTeamNames" runat="server" AutoPostBack="True" Height="22px" OnSelectedIndexChanged="lstTeamNames_SelectedIndexChanged" Width="163px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="lblPlayers" runat="server" Text="Οι παίκτες της ομάδας" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblPlithos" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="lstTeamPlayers" runat="server" AutoPostBack="True" Height="16px" Visible="False" Width="149px">
        </asp:DropDownList>
        <br />
        <br />
        <br />
        <asp:Label ID="lblPlayersNS" runat="server" Text="Μη επιλεγμένοι παίκτες" Visible="False"></asp:Label>
&nbsp;<asp:Label ID="lblPlithosNS" runat="server"></asp:Label>
        <br />
        <br />
        <asp:DropDownList ID="lstTeamPlayersNS" runat="server" AutoPostBack="True" Height="16px" Visible="False" Width="147px">
        </asp:DropDownList>
        <br />
    
    </div>
    </form>
</body>
</html>
