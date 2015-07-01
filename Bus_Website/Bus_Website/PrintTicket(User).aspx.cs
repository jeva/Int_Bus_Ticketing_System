using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;


namespace Bus_Website
{
    public partial class PrintTicket_User_ : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["adults"] != null)
            {
                Label1.Text = Session["adults"].ToString();
            }

            if (Session["childs"] != null)
            {
                Label2.Text = Session["childs"].ToString();
            }

            if (Session["totalfare"] != null)
            {
                Label3.Text = Session["totalfare"].ToString();
            }


            if (!IsPostBack)
            {
                string seatno = DropDownList2.SelectedValue.ToString();

                SqlCommand cmd = new SqlCommand("Select ticket_id from Ticket where trip_id = '" + Session["tripps"] + "' and buscompany_id = '" + Session["bcom"] + "'and bus_id = '" + Session["buss"] + "' and username = '" + Session["userName"] + "' and seat_no  = '" + Session["seat_id"] + "'", con);

                con.Open();

                DropDownList1.DataSource = cmd.ExecuteReader();
                DropDownList1.DataTextField = "ticket_id";
                DropDownList1.DataValueField = "ticket_id";
                DropDownList1.DataBind();


                con.Close();

            }

            Label4.Text = DropDownList1.SelectedValue.ToString();



        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            PdfPTable pdftable = new PdfPTable(GridView1.HeaderRow.Cells.Count);

            foreach (TableCell headercell in GridView1.HeaderRow.Cells)
            {
                PdfPCell pdfcell = new PdfPCell(new Phrase(headercell.Text));

                pdfcell.HorizontalAlignment = Element.ALIGN_CENTER;
                pdfcell.VerticalAlignment = Element.ALIGN_MIDDLE;

                pdftable.TotalWidth = 500f;

                //fix the absolute width of the table
                pdftable.LockedWidth = true;


                //relative col widths in proportions - 1/3 and 2/3
                float[] widths = new float[] { 7f, 14f, 8f, 11f, 9f, 13f, 14f, 12f, 10f };
                pdftable.SetWidths(widths);
                pdftable.HorizontalAlignment = 0;

                //leave a gap before and after the table
                pdftable.SpacingBefore = 10f;
                pdftable.SpacingAfter = 10f;

                pdftable.AddCell(pdfcell);

            }


            // loop through each row in database
            foreach (GridViewRow gridviewrow in GridView1.Rows)
            {
                // loop through in each cell in database
                foreach (TableCell tablecell in gridviewrow.Cells)
                {
                    PdfPCell pdfcell = new PdfPCell(new Phrase(tablecell.Text));

                    pdfcell.HorizontalAlignment = Element.ALIGN_CENTER;
                    pdfcell.VerticalAlignment = Element.ALIGN_MIDDLE;

                    pdftable.TotalWidth = 500f;

                    //fix the absolute width of the table
                    pdftable.LockedWidth = true;


                    //relative col widths in proportions - 1/3 and 2/3
                    float[] widths = new float[] { 7f, 14f, 8f, 11f, 9f, 13f, 14f, 12f, 10f };
                    pdftable.SetWidths(widths);
                    pdftable.HorizontalAlignment = 0;
                    //leave a gap before and after the table
                    pdftable.SpacingBefore = 20f;
                    pdftable.SpacingAfter = 30f;

                    pdftable.AddCell(pdfcell);



                }




                }





                Document pdfdocument = new Document(PageSize.A4, 30f, 80f, 80f, 80f);
                iTextSharp.text.Image PNG = iTextSharp.text.Image.GetInstance("logo1 copy.PNG");

                iTextSharp.text.Image PNG1 = iTextSharp.text.Image.GetInstance("copyright.PNG");
            PdfWriter.GetInstance(pdfdocument, Response.OutputStream);


                pdfdocument.Open();

                PNG.ScaleToFit(500f, 150f);
                PNG1.ScaleToFit(500f, 90f);

                Paragraph p1 = new Paragraph();
                Paragraph p2 = new Paragraph();

                Chunk chunk = new Chunk("Fare Details  "  , FontFactory.GetFont("dax-black"));
                
            
                chunk.SetUnderline(0.5f, -1.5f);


                Font arial = FontFactory.GetFont("Arial", 16, iTextSharp.text.BaseColor.RED);
                Font arial2 = FontFactory.GetFont("Arial", 12, iTextSharp.text.BaseColor.BLACK);
                
                p2.Add(Chunk.NEWLINE);
                p2.Add(Chunk.NEWLINE);


                Label5.Text = DateTime.Now.ToString();
           
                p2.Add(new Chunk("Purchased on : "+Label5.Text+"", arial2));

      
   

                p2.Add(Chunk.NEWLINE);
                p2.Add(Chunk.NEWLINE);

                p2.Add(new Chunk("Your Ticket Number is : ", arial2));
                p2.Add(new Chunk("#" +Label4.Text+"", arial));

                
                //p1.Alignment = Element.ALIGN_RIGHT;
         

                p1.Add(new Chunk("Fare Details", arial2));
                p1.Add(Chunk.NEWLINE);
                p1.Add(Chunk.NEWLINE);  
                p1.Add(new Chunk( "No of Adults : " +Label1.Text+"   ", arial2));
                p1.Add(Chunk.NEWLINE);
                p1.Add(Chunk.NEWLINE);  
                p1.Add(new Chunk("No of Childs : " + Label2.Text + "   ", arial2));
                p1.Add(Chunk.NEWLINE);
                p1.Add(Chunk.NEWLINE); 
                p1.Add(new Chunk("Total Fare (MYR)  : " + Label3.Text + ".00   ",arial));
                p1.Add(Chunk.NEWLINE);
                p1.Add(Chunk.NEWLINE);

                

                pdfdocument.Add(PNG);
                pdfdocument.Add(p2);
                pdfdocument.Add(pdftable);
                pdfdocument.Add(p1);
                pdfdocument.Add(PNG1);
   


                pdfdocument.Close();

                Response.ContentType = "application/pdf";

                string fileName = "(" + "#" + Label4.Text + ")" + "-" + "Ticket_Number.pdf";

                Response.AppendHeader("content-disposition", "attachment;filename=" + fileName);

                Response.Write(pdfdocument);

                Response.Flush();

                Response.End();

            }
        }
    }
