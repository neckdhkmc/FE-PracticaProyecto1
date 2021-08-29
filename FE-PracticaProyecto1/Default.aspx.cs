using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Linq;
using System.Net;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Xml.Xsl;

public partial class _Default : System.Web.UI.Page
{
    public string Tipo = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] == null)//preguntando si en la url hay un atributo id
        {
            Tipo = "0";
        }
        else
        {
            Tipo = Request.QueryString["id"];
        }
        TransformarXML();
    }
    private void TransformarXML()
    {
        string xmlPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xml/Tienda.xml";
        string xslttPath = ConfigurationManager.AppSettings["FileServer"].ToString() + "xslt/Templete.xslt";
        XmlTextReader trMenu = new XmlTextReader(xmlPath);

        //credenciales 
        XmlUrlResolver resolver = new XmlUrlResolver();
        resolver.Credentials = CredentialCache.DefaultCredentials;

        //crear la configuracion para poder acceder ak xslt

        //los parametros true son para poder tratar al xslt
        //como documento y poder transformarlo 

        XsltSettings settings = new XsltSettings(true, true);

        //leer XSLT
        XslCompiledTransform xslt = new XslCompiledTransform();
        xslt.Load(xslttPath, settings, resolver);

        //creamos a donde enviar la tranformacion
        StringBuilder sBuider = new StringBuilder();
        TextWriter tWriter = new StringWriter(sBuider);

        XsltArgumentList xslArsg = new XsltArgumentList();
        xslArsg.AddParam("oPcion", "", Tipo);

        xslt.Transform(trMenu, xslArsg, tWriter);
        string resultado = sBuider.ToString();
        Response.Write(resultado);
        //
    }
}