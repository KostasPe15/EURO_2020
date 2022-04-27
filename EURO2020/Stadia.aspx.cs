using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Stadia : System.Web.UI.Page
{
    eu.dataaccess.footballpool.ws.Info fbWS
        = new eu.dataaccess.footballpool.ws.Info();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (IsPostBack == false)
        {
            string[] StadiumTable = fbWS.StadiumNames();

            lstStadia.Items.Add("- επιλέξτε στάδιο -");

            for (int i = 0; i < StadiumTable.Length; i++)
                lstStadia.Items.Add(StadiumTable[i]);
        }

    }

    protected void lstStadia_SelectedIndexChanged(object sender, EventArgs e)
    {
        eu.dataaccess.footballpool.ws.tStadiumInfo Stadio = 
            fbWS.StadiumInfo(lstStadia.Text);

        lblStadioName.Text = Stadio.sName + ", ";
        lblStadioCity.Text = Stadio.sCityName + ", ";
        lblStadioTheseis.Text = 
            Convert.ToString(Stadio.iSeatsCapacity) + " θέσεις." ;


        lnkStGMaps.Text = "Google Maps: Πατήστε εδώ";
        lnkStGMaps.NavigateUrl = Stadio.sGoogleMapsURL;

        lnkStWiki.Text = Stadio.sWikipediaURL;
        lnkStWiki.NavigateUrl = Stadio.sWikipediaURL;
        
        
        //προσθήκη ετικέτας <iframe> για την εμφάνιση της σελίδας wiki
        iFramePH.Controls.Add(new LiteralControl("<iframe src=\"" +
        Stadio.sWikipediaURL + "\" width=\"600\"" +
        "height=\"300\"runat=\"server\"></iframe>"));
        

    }
}