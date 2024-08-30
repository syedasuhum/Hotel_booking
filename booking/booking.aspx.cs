using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class booking_booking : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Wizard.ActiveStepIndex = 0;
            txtNumber.Text = "1";
            num.Text = "0";
            number.Text = "1";
           
            txtcheckin.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            txtcheckout.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");
            txtexp.Attributes["min"] = DateTime.Now.ToString("yyyy-MM-dd");




        }
        Wizard.PreRender += new EventHandler(Wizard1_PreRender);

    }

    protected void Wizard1_PreRender(object sender, EventArgs e)
    {
        Repeater SideBarList = Wizard.FindControl("HeaderContainer").FindControl("SideBarList") as Repeater;
        SideBarList.DataSource = Wizard.WizardSteps;
        SideBarList.DataBind();

    }
    protected void Selected(object sender, EventArgs e)
    {
        Wizard.ActiveStepIndex = Convert.ToInt32((sender as LinkButton).CommandArgument) - 1;
    }
    protected string GetClassForWizardStep(object wizardStep)
    {
        WizardStep step = wizardStep as WizardStep;

        if (step == null)
        {
            return "";
        }
        int stepIndex = Wizard.WizardSteps.IndexOf(step);

        if (stepIndex < Wizard.ActiveStepIndex)
        {
            return "prevStep";
        }
        else if (stepIndex > Wizard.ActiveStepIndex)
        {
            return "nextStep";
        }
        else
        {
            return "currentStep";
        }
    }


    protected void OnMinus(object sender, EventArgs e)
    {
        if (int.Parse(txtNumber.Text) > 0)
        {
            txtNumber.Text = (int.Parse(txtNumber.Text) - 1).ToString();
        }
    }

    protected void OnPlus(object sender, EventArgs e)
    {
        txtNumber.Text = (int.Parse(txtNumber.Text) + 1).ToString();
    }

    protected void subs(object sender, EventArgs e)
    {
        if (int.Parse(num.Text) > 0)
        {
            num.Text = (int.Parse(num.Text) - 1).ToString();
        }
    }

    protected void add(object sender, EventArgs e)
    {
        num.Text = (int.Parse(num.Text) + 1).ToString();
    }

    protected void sub1(object sender, EventArgs e)
    {
        if (int.Parse(number.Text) > 0)
        {
            number.Text = (int.Parse(number.Text) - 1).ToString();
        }
    }

    protected void add1(object sender, EventArgs e)
    {
        number.Text = (int.Parse(number.Text) + 1).ToString();
    }


    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-LT4KMIA;Initial Catalog=hotel_booking;Integrated Security=True");
        SqlCommand cmd = new SqlCommand("insert into reg_booking(check_in,check_out,room,adult,child,room_type,f_name,l_name,email_id,addr,pcode,phone_no,card_no,cvv,card_name,exp_date)values(@check_in,@check_out,@room,@adult,@child,@room_type,@f_name,@l_name,@email_id,@addr,@pcode,@phone_no,@card_no,@cvv,@card_name,@exp_date)", con);
        cmd.Parameters.AddWithValue("@check_in", txtcheckin.Text);
        cmd.Parameters.AddWithValue("@check_out", txtcheckout.Text);
        cmd.Parameters.AddWithValue("@room", number.Text);
        cmd.Parameters.AddWithValue("@adult", txtNumber.Text);
        cmd.Parameters.AddWithValue("@child", num.Text);
        cmd.Parameters.AddWithValue("@room_type", select_room.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@f_name", txtfname.Text);
        cmd.Parameters.AddWithValue("@l_name", txtlname.Text);
        cmd.Parameters.AddWithValue("@email_id", txte_addr.Text);
        cmd.Parameters.AddWithValue("@addr", address.Text);
        cmd.Parameters.AddWithValue("@pcode", txtpcode.Text);
        cmd.Parameters.AddWithValue("@phone_no", txtphone.Text);
        cmd.Parameters.AddWithValue("@card_no", credit.Text);
        cmd.Parameters.AddWithValue("@cvv", txtcvv.Text);
        cmd.Parameters.AddWithValue("@card_name", cardname.Text);
        cmd.Parameters.AddWithValue("@exp_date", txtexp.Text);

        con.Open();
        cmd.ExecuteNonQuery();
        con.Close();
        string message = " Successfully";
        string script = "window.onload = function(){ alert('";
        script += message;
        script += "');";
        script += "window.location = '";
        script += Request.Url.AbsoluteUri;
        script += "'; }";
        ClientScript.RegisterStartupScript(this.GetType(), "SuccessMessage", script, true);
        Clear();

    }


    void Clear()
    {
        txtcheckin.Text = string.Empty;
        txtcheckout.Text = string.Empty;
        number.Text = string.Empty;
        txtNumber.Text = string.Empty;
        num.Text = string.Empty;
        select_room.SelectedItem.Value = string.Empty;
        txtfname.Text = string.Empty;
        txtlname.Text = string.Empty;
        txte_addr.Text = string.Empty;
        address.Text = string.Empty;
        txtpcode.Text = string.Empty;
        txtphone.Text = string.Empty;
        credit.Text = string.Empty;
        txtcvv.Text = string.Empty;
        cardname.Text = string.Empty;
        txtexp.Text = string.Empty;

    }

}


