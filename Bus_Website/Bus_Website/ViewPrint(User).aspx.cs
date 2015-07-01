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
    public partial class ViewPrint_User_ : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["conn"].ToString());

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select adults from Ticket where trip_id = '" + Session["Tripps"] + "' and username = '" + Session["userName"] + "'", con);

                con.Open();

                DropDownList2.DataSource = cmd.ExecuteReader();
                DropDownList2.DataTextField = "adults";
                DropDownList2.DataValueField = "adults";
                DropDownList2.DataBind();


                con.Close();

                Session["adults"] = DropDownList2.SelectedValue.ToString();


            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select child from Ticket where trip_id = '" + Session["Tripps"] + "' and username = '" + Session["userName"] + "'", con);

                con.Open();

                DropDownList3.DataSource = cmd.ExecuteReader();
                DropDownList3.DataTextField = "child";
                DropDownList3.DataValueField = "child";
                DropDownList3.DataBind();


                con.Close();

                Session["childs"] = DropDownList3.SelectedValue.ToString();


            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select total_amt from Ticket where trip_id = '" + Session["Tripps"] + "' and username = '" + Session["userName"] + "'", con);

                con.Open();

                DropDownList4.DataSource = cmd.ExecuteReader();
                DropDownList4.DataTextField = "total_amt";
                DropDownList4.DataValueField = "total_amt";
                DropDownList4.DataBind();


                con.Close();

                Session["totalfare"] = DropDownList4.SelectedValue.ToString();


                Label1.Text = DropDownList2.SelectedValue.ToString();
                Label2.Text = DropDownList3.SelectedValue.ToString();
                Label3.Text = DropDownList4.SelectedValue.ToString();

            }

            if (Session["ticketID"] != null)
            {
                Label4.Text = Session["ticketID"].ToString();
            }

            if (!IsPostBack)
            {
                SqlCommand cmd = new SqlCommand("Select ticket_date from Ticket where ticket_id = '" + Session["ticketID"] +"'", con);

                con.Open();

                DropDownList5.DataSource = cmd.ExecuteReader();
                DropDownList5.DataTextField = "ticket_date";
                DropDownList5.DataValueField = "ticket_date";
                DropDownList5.DataBind();


                con.Close();

                Label6.Text = DropDownList5.SelectedValue.ToString();


            }

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
                float[] widths = new float[] { 4f, 7f, 6f, 7f, 6f, 8f, 7f, 8f, 6f };
                pdftable.SetWidths(widths);
                pdftable.HorizontalAlignment = 0;

                //leave a gap before and after the table
                pdftable.SpacingBefore = 10f;
                pdftable.SpacingAfter = 10f;

                //border color

                /*
                pdfcell.BorderColorLeft = BaseColor.BLACK;
                pdfcell.BorderColorRight = BaseColor.BLACK;
                pdfcell.BorderColorTop = BaseColor.BLACK;
                pdfcell.BorderColorBottom = BaseColor.BLACK;
                pdfcell.BorderWidthLeft = 1f;
                pdfcell.BorderWidthRight = 1f;
                pdfcell.BorderWidthTop = 1f;
                pdfcell.BorderWidthBottom = 1f;

                 * */
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
                    float[] widths = new float[] { 4f, 7f, 6f, 7f, 6f, 8f, 7f, 8f, 6f };
                    pdftable.SetWidths(widths);
                    pdftable.HorizontalAlignment = 0;
                    //leave a gap before and after the table
                    pdftable.SpacingBefore = 20f;
                    pdftable.SpacingAfter = 30f;

                    //bordercolor

                    /*
                    pdfcell.BorderColorLeft = BaseColor.BLACK;
                    pdfcell.BorderColorRight = BaseColor.BLACK;
                    pdfcell.BorderColorTop = BaseColor.BLACK;
                    pdfcell.BorderColorBottom = BaseColor.BLACK;
                    pdfcell.BorderWidthLeft = 1f;
                    pdfcell.BorderWidthRight = 1f;
                    pdfcell.BorderWidthTop = 1f;
                    pdfcell.BorderWidthBottom = 1f;
                    
*/
                    pdftable.AddCell(pdfcell);



                }




                }


                Document pdfdocument = new Document(PageSize.A4, 30f, 20f, 20f, 20f);
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


                p2.Add(new Chunk("Purchased on : " + Label6.Text + "", arial2));


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

                string fileName =   "(" + "#" + Label4.Text + ")" + "-"+ "Ticket_Number.pdf";

                Response.AppendHeader("content-disposition", "attachment;filename=" + fileName);

                Response.Write(pdfdocument);

                Response.Flush();

                Response.End();

            }
        }
    }
