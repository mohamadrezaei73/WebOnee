using DataBaseConnector;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebOne.Models;

namespace WebOne
{
    public partial class Veiw : System.Web.UI.Page
    {
        public List <string> SRC;
        public List<Mahsoulat> obj;

        protected void Page_Load(object sender, EventArgs e)
        {
            SRC = new List<string>();
            SRC.Add("Assets/image/slider/banner-1.jpg");
            SRC.Add("Assets/image/slider/banner-2.jpg");
            SRC.Add("Assets/image/slider/banner-3.jpg");




            obj = new List<Mahsoulat>();
            PDBC db = new PDBC("WebForm1");
            db.Connect();
            using (DataTable dt = db.Select("SELECT [id],[Name] ,[Image],[Price_New],[Price_Old],[Saving],[Is_Saving] FROM [dbo].[DatayeMahsoul]")) 
            {
            for (int i = 0; i<dt.Rows.Count; i++)
                {
                    Mahsoulat ad = new Mahsoulat();
                    ad.name = dt.Rows[i]["name"].ToString();
                    ad.Image = dt.Rows[i]["Image"].ToString();
                    ad.Price_New = dt.Rows[i]["Price_New"].ToString();
                    ad.Price_Old = dt.Rows[i]["Price_Old"].ToString();
                    ad.Is_Saving = Convert.ToInt32(dt.Rows[i]["Is_Saving"].ToString());
                    ad.Saving = dt.Rows[i]["Saving"].ToString();

                    obj.Add(ad);

                }
                db.DC();
            
            
            
            
            }
        }
    }
}