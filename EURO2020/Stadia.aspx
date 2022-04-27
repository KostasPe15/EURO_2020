<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Stadia.aspx.cs" Inherits="Stadia" %>

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
    
    </div>
        <asp:DropDownList ID="lstStadia" runat="server" Height="16px" Width="165px" AutoPostBack="True" OnSelectedIndexChanged="lstStadia_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="lblStadioName" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblStadioCity" runat="server"></asp:Label>
&nbsp;<asp:Label ID="lblStadioTheseis" runat="server"></asp:Label>
        <br />
        <br />
        <asp:HyperLink ID="lnkStGMaps" runat="server"></asp:HyperLink>
        <br />
        <br />
        <asp:HyperLink ID="lnkStWiki" runat="server"></asp:HyperLink>
        <br />
        <asp:PlaceHolder ID="iFramePH" runat="server"></asp:PlaceHolder>

    </form>
</body>
</html>
