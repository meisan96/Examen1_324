using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;

public partial class Ejer4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection();
        MySqlDataAdapter ada = new MySqlDataAdapter();

        DataSet ds = new DataSet();
        con.ConnectionString = "Server=localhost;UserID=root;Database=mibasemoises;Password=moises123;";
        ada.SelectCommand = new MySqlCommand();
        ada.SelectCommand.Connection = con;
        ada.SelectCommand.CommandText = "SELECT n.sigla, (SUM(CASE WHEN p.departamento ='01' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='01' THEN 1 ELSE 0 END )) CH, (SUM(CASE WHEN p.departamento ='02' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='02' THEN 1 ELSE 0 END )) LP, (SUM(CASE WHEN p.departamento ='03' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='03' THEN 1 ELSE 0 END )) CB, (SUM(CASE WHEN p.departamento ='04' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='04' THEN 1 ELSE 0 END )) 'OR', (SUM(CASE WHEN p.departamento ='05' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='05' THEN 1 ELSE 0 END )) PT, (SUM(CASE WHEN p.departamento ='06' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='06' THEN 1 ELSE 0 END )) TJ, (SUM(CASE WHEN p.departamento ='07' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='07' THEN 1 ELSE 0 END )) SC, (SUM(CASE WHEN p.departamento ='08' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='08' THEN 1 ELSE 0 END )) BE, (SUM(CASE WHEN p.departamento ='09' THEN n.notafinal ELSE 0 END )) /(SUM(CASE WHEN p.departamento ='09' THEN 1 ELSE 0 END )) PD FROM persona p, nota n WHERE p.ci=n.ci GROUP BY n.sigla";
        ada.Fill(ds);
        GridView2.DataSource = ds.Tables[0];
        GridView2.DataBind();

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        MySqlConnection con = new MySqlConnection();
        MySqlDataAdapter ada = new MySqlDataAdapter();

        DataSet ds1 = new DataSet();
        con.ConnectionString = "Server=localhost;UserID=root;Database=mibasemoises;Password=moises123;";
        ada.SelectCommand = new MySqlCommand();
        ada.SelectCommand.Connection = con;
        ada.SelectCommand.CommandText = "SELECT * from nota where ci="+TextBox1.Text;
        ada.Fill(ds1);
        GridView1.DataSource = ds1.Tables[0];
        GridView1.DataBind();
    }
}