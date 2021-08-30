using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class ContactoVenta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string from = Request.Form["contact_email"].ToString();
            string nombre = Request.Form["contact_name"].ToString();
            string personas = Request.Form["contact_numeropersonas"].ToString();
            string extra = Request.Form["contact_personaExtra"].ToString();
            string fecha = Request.Form["contact_fecha"].ToString();
            string hora = Request.Form["contact_hora"].ToString();

            string subject = nombre + "Fecha:" + fecha + ".Hora:" + hora
            + ".Personas:" + (int.Parse(personas) + int.Parse(extra)).ToString();

            string mensaje = "Estimado(a): " + nombre + " Usted ha realizado una Compra el dia: "
                + " Fecha: " + fecha + " a las: " + hora + " hrs de" + " la venta nocturna por un total de: " + (int.Parse(personas) * int.Parse(extra)).ToString()+" pesos";

            //invocar la funcion del correo

            string resultado = sendGmail(from, subject, mensaje);
            Label1.Text = resultado;



        }


    }
    private string sendGmail(string from, string subjet, string mensaje)
    {
        SmtpClient client = new SmtpClient();
        client.DeliveryMethod = SmtpDeliveryMethod.Network;
        client.EnableSsl = true;
        client.Host = "smtp.gmail.com";
        client.Port = 587;

        //nos autenticamos en el smtp

        System.Net.NetworkCredential credentials = new System.Net.NetworkCredential("marcosjma.2019@gmail.com", "Disturbio1");
        client.UseDefaultCredentials = false;
        client.Credentials = credentials;

        //creamos nuestro correo
        MailMessage oMail = new MailMessage();
        oMail.From = new MailAddress(from);
        oMail.To.Add(new MailAddress("ing.marcosmendoza@hotmail.com"));
        oMail.Subject = subjet;
        oMail.IsBodyHtml = true;
        oMail.Priority = MailPriority.Low;
        oMail.Body = mensaje;

        try
        {
            client.Send(oMail);
            return "Correo Enviado";
        }
        catch (Exception ex)
        {
            return "Error en el envio..!!" + ex.Message;
        }
    }

}