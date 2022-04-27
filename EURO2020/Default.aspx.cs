using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{

    eu.dataaccess.footballpool.ws.Info fbWS 
        = new eu.dataaccess.footballpool.ws.Info();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string[] TeamTable = fbWS.TeamNames();

            lstTeamNames.Items.Add("- επιλέξτε ομάδα -");

            for (int i = 0; i < TeamTable.Length; i++)
                lstTeamNames.Items.Add(TeamTable[i]);
        }
    }

    protected void lstTeamNames_SelectedIndexChanged(object sender, EventArgs e)
    {
        eu.dataaccess.footballpool.ws.tPlayer[] Player =
            fbWS.TeamPlayers(lstTeamNames.Text, true);

        eu.dataaccess.footballpool.ws.tPlayer[] PlayerNS =
            fbWS.TeamPlayers(lstTeamNames.Text, false);


        lstTeamPlayers.Items.Clear();
        lstTeamPlayersNS.Items.Clear();

        for (int i = 0; i < Player.Length; i++)
               lstTeamPlayers.Items.Add(Player[i].sName);

        for(int i = 0; i < PlayerNS.Length; i++)
            lstTeamPlayersNS.Items.Add(PlayerNS[i].sName);
        


        lblPlithos.Text = " (" + 
            Convert.ToString(Player.Length) + "):";

        lblPlithosNS.Text = " (" +
            Convert.ToString(PlayerNS.Length) + "):";

        lblPlayers.Visible = true;
        lblPlithos.Visible = true;
        lstTeamPlayers.Visible = true;

        lblPlayersNS.Visible = true;
        lblPlithosNS.Visible = true;
        lstTeamPlayersNS.Visible = true;
    }
}