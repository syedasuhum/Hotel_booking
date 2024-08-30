<%@ Page Title="" Language="C#" MasterPageFile="~/booking/booking.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="booking_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:ScriptManager ID="ScriptManager1" runat="server">
    </asp:ScriptManager>
   
           
             <div class="container-fluid bg-light">
        <div class="hotel">
            <h2 class="text-center">Hotel Booking Form</h2>
            <img class="img mt-2" src="../images/img/hotel.jpg" />
            <div class="g-0">
                <div class="hotel_card">
                    
                <asp:Wizard ID="Wizard" runat="server" DisplaySideBar="False"  Width="100%" 
                      height="400px" OnFinishButtonClick="Wizard1_FinishButtonClick" ActiveStepIndex="3">
                    <WizardSteps>
                        <asp:WizardStep ID="WizardStep1" runat="server" Title="Select Dates">
                            <div class="content">
                                <div class="row">
                              <div class="col-lg-8 col-md-8 col-12">
                             <div class="row">
         <div class="col-lg-6 col-md-6 col-12">
       <asp:Label ID="checkin" class="check" runat="server" Text="Label">Check In:</asp:Label><br />
        <asp:TextBox ID="txtcheckin" runat="server" type="Date" CssClass="myform" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="checkinvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtcheckin"></asp:RequiredFieldValidator>
                 
  
</div>
         <div class="col-lg-6 col-md-6 col-12">
        <asp:Label ID="checkout" class="check" runat="server" Text="Label">Check Out:</asp:Label><br />
 <asp:TextBox ID="txtcheckout" runat="server" type="Date" CssClass="myform" ></asp:TextBox>
             <asp:RequiredFieldValidator ID="checkoutvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtcheckout"></asp:RequiredFieldValidator>
    </div>
          </div>
                  <div class="row mt-4">
                       <div class="col-lg-4 col-md-4 col-12">
                          <asp:Label ID="room" runat="server" text="Select Room" class="check" ></asp:Label>
                            <div class="btn-group text-center" >
                                 <asp:Button ID="minus2" runat="server" OnClick="sub1" cssClass="room_btn" Text="-" />
                                 <asp:TextBox ID="number" runat="server" cssClass="room_btn" ></asp:TextBox>
                                 <asp:Button ID="plus2" runat="server" OnClick="add1" cssClass="room_btn" Text="+" />
                               
                                         </div>

                           
                         
                                         </div>
                                         <div class="col-lg-4 col-md-4 col-12">
                                             <asp:Label ID="Label4" runat="server" Text="Adult"  class="check"></asp:Label>
                                              <div class="btn-group" >
                                              <asp:Button ID="btnMinus" runat="server" OnClick="OnMinus" cssClass="room_btn" Text="-" />
                                              <asp:TextBox ID="txtNumber" runat="server" cssClass="room_btn"></asp:TextBox>
                                              <asp:Button ID="btnPlus" runat="server" OnClick="OnPlus" cssClass="room_btn" Text="+" />
                                            
                                         </div>
                                             </div>

                                            <div class="col-lg-4 col-md-4 col-12">
                                             <asp:Label ID="Label15" runat="server" Text="Childern"   class="check"></asp:Label>
                                              <div class="btn-group" >
                                              <asp:Button ID="Minus" runat="server" OnClick="subs" cssClass="room_btn" Text="-" />
                                              <asp:TextBox ID="num" runat="server" cssClass="room_btn"></asp:TextBox>
                                              <asp:Button ID="plus" runat="server" OnClick="add" cssClass="room_btn" Text="+" />
                                         </div>
                                             </div>
                                     </div>
                                    </div>
                                    
                                         <div class="col-lg-4 col-md-4 col-12">
                                               <div class="row">
                                        
                                            <div class="d-flex flex-column bd-highlight">
                                                <div class="clearfix">
                                                    <div class=" bd-highlight" >
                                                        <h6 class="text-start">Duration: <font color="yellow">1 Night</font></h6><hr />
                                                        
                                                    </div>
                                                    <div class=" bd-highlight">
                                                         <h6 class="text-start">Room: <font color="yellow">2 Room</font></h6><hr />
                                                        
                                                      </div>
                                                    <div class=" bd-highlight">
                                                         <h6 class="text-start">Person: <font color="yellow">4 Person</font></h6><hr />
                                                        
                                                    </div>
                                                     <div class="bd-highlight">
                                                         <h6 class="text-start">Type of Room: <font color="yellow">Standard</font></h6>
                                                        
                                                    </div>
             
                                                </div>
                                           
                                        </div>
                                </div>
                          </div>
                    </div>
                  </div>
                        </asp:WizardStep>
                        <asp:WizardStep ID="WizardStep2" runat="server" Title="Select Room">
                           <div class="content">
                                
                                    <div class="row">
                                        <div class="col-lg-8 col-md-8 col-12">
                                            <div class="d-flex flex-column bd-highlight mb-3">
                                                
                                                    <%--<div class="p-2 bd-highlight" id="Rate1" >
                                                        <h3>Standard Room <span class="float-end">$21</span></h3>
                                                        <p>Garden View</p>
                                                    </div><hr />
                                                    <div class="p-2 bd-highlight" id="Rate2">
                                                        <h3>Deluxe Room<span class="float-end">$29</span></h3>
                                                        <p>City View With Breakfast</p>
                                                    </div><hr />
                                                    <div class="p-2 bd-highlight" id="Rate3">
                                                        <h3>Super Deluxe Room<span class="float-end">$35</span></h3>
                                                        <p>Sea View With Breakfast</p>
                                                    </div>--%>
                                                   <div  role="group" aria-label="Basic radio toggle button group"  class="btn-group-vertical">
                                                       <%--<asp:RadioButton ID="RadioButton1" runat="server" Text="stand"    class="btn btn-outline-light"   />--%>
                                                
                                                    
                                                      <%-- <asp:TextBox runat="server"   name="btnradio" id="btnradio1" autocomplete="off" ></asp:TextBox>--%>
                                                       <asp:RadioButtonList ID="select_room" runat="server" cssClass="rbl"  TextAlign="Left" RepeatDirection="Vertical" Font-Size="X-Large">
                                                           <asp:ListItem class="txt">Standard</asp:ListItem>
                                                            <asp:ListItem class="txt">Deluxe</asp:ListItem>
                                                            <asp:ListItem class="txt">Super Deluxe</asp:ListItem>
                                                       </asp:RadioButtonList>


                                           <%-- <input type="radio" class="btn-check" name="btnradio" id="btnradio2" autocomplete="off" cssClass="my_btn">
                                             <label class="btn btn-outline-light" for="btnradio2"> <h3 class="text-start">Standard Room</h3>
                                                        </label>
                                             <input type="radio" class="btn-check" name="btnradio" id="btnradio3" autocomplete="off" cssClass="my_btn">
                                             <label class="btn btn-outline-light" for="btnradio3"> <h3 class="text-start">Deluxe Room</h3>
                                                        </label>

                                              <input type="radio" class="btn-check" name="btnradio" id="btnradio4" autocomplete="off" cssClass="my_btn">
                                             <label class="btn btn-outline-light" for="btnradio4"><h3 class="text-start">Super Deluxe Room</h3>
                                                        </label>--%>
                                                   </div>
  
             
                                                </div>
                                            </div>
                                        </div>
                                </div>
                            
                             
                           
                            
                        </asp:WizardStep>
                        <asp:WizardStep ID="WizardStep3" runat="server" Title="Personal details">
                            <div class="content">
                                <div class="row mt-2">
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <asp:Label ID="fname" runat="server" for ="first-name" class="check">First Name</asp:Label>
                                        <asp:TextBox ID="txtfname" runat="server" type="text" class="myform" placeholder="Enter your First Name"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="fnamevalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtfname"></asp:RequiredFieldValidator>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-12">
                                        <asp:Label ID="lname" runat="server"  for ="last-name" class="check" >Last Name</asp:Label>
                                        <asp:TextBox ID="txtlname" type="text" class="myform" placeholder="Enter your Last Name" runat="server"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="lnamevalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtlname"></asp:RequiredFieldValidator>
                                    </div>
                                </div>

                                <div class="row-mt-2 mt-4">
                                    <asp:Label ID="e_addr" runat="server"  for="address" class="check">Email Address</asp:Label>
                                    <asp:TextBox ID="txte_addr" type="email" class="myform" placeholder="Enter your Email Address" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="e_addrvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txte_addr"></asp:RequiredFieldValidator>
                                </div>

                                <div class="row-mt-2 mt-4">
                                    <asp:Label ID="addr" runat="server"  for="address" class="check" >Address(Optional)</asp:Label>
                                    <asp:TextBox ID="address" runat="server" type="text" class="myform" placeholder="Enter your Address"></asp:TextBox>
                    <%--                <asp:RequiredFieldValidator ID="addrvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="address"></asp:RequiredFieldValidator>--%>
                                </div>

                                <div class="row-mt-2 mt-4">
                                    <asp:Label ID="pcode" runat="server"  for="address" class="check">Post Code</asp:Label><br />
                                    <asp:TextBox ID="txtpcode" runat="server" type="Number" class="myform" placeholder="Enter your Post Code"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="pcodevalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtpcode"></asp:RequiredFieldValidator>
                                     <asp:RegularExpressionValidator  ID="pcodereg" runat="server" ErrorMessage="Invalid_Number" ValidationExpression="[0-9]{6}" class="text-danger" ControlToValidate="txtpcode"></asp:RegularExpressionValidator>    
                                </div>

                                <div class="row-mt-2 mt-4">
                                    <asp:Label ID="phone" runat="server"  for="number" class="check">Phone Number</asp:Label><br />
                                    <asp:TextBox ID="txtphone" runat="server" type="Number" class="myform" placeholder="Enter your Phone Number"></asp:TextBox>
                                     <asp:RequiredFieldValidator ID="phonevalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtphone"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator  ID="phonereg" runat="server" ErrorMessage="Invalid_Number" ValidationExpression="[0-9]{10}" class="text-danger" ControlToValidate="txtphone"></asp:RegularExpressionValidator>
                                   
                                </div>

                            </div>
                            
                        </asp:WizardStep>
                        <asp:WizardStep ID="WizardStep4" runat="server" Title="Make Payment">
                            <div class="content">
                                
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <asp:Label ID="creditcard" runat="server" Text="Label" for="" class="check">Credit Card number:</asp:Label><br />
                                                <asp:TextBox ID="credit" runat="server" type="number" class="myform" placeholder="xxxx xxxx xxxx xxxx"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="cardvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="credit"></asp:RequiredFieldValidator>
                                                <asp:RegularExpressionValidator  ID="cardreg" runat="server" ErrorMessage="Invalid_Number" ValidationExpression="[0-9]{16}" class="text-danger" ControlToValidate="credit"></asp:RegularExpressionValidator>    
                         
                                            </div>

                                            <div class="col-lg-6 col-md-6 col-12">
                                                <asp:Label ID="cvv" runat="server" Text="Label" for="" class="check">CVV:</asp:Label><br />
                                                <asp:TextBox ID="txtcvv" runat="server"  class="myform"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="cvvvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtcvv"></asp:RequiredFieldValidator>
                        
                                            </div>
                                        </div>
                                        <div class="row mt-5">
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <asp:Label ID="card" class="check" runat="server" Text="Label">Name on Credit Card:</asp:Label>
                                                <asp:TextBox ID="cardname" type="text" class="myform"  runat="server"></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="cardvaild" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="cardname"></asp:RequiredFieldValidator>

            
                                                <p><small class="text-secondary">Full name as displayed on card</small></p>
                                            </div>
                                            <div class="col-lg-6 col-md-6 col-12">
                                                <asp:Label ID="expdate" class="check" runat="server" Text="Label">Expired On:</asp:Label><br />
                                                <asp:TextBox ID="txtexp" runat="server" type="Date" CssClass="myform" ></asp:TextBox>
                                                     <asp:RequiredFieldValidator ID="expvalid" runat="server" ErrorMessage="Required_Field"  class="text-danger" ControlToValidate="txtexp"></asp:RequiredFieldValidator>

           
                                            </div>
                                        </div>
                                     </div>
         
                                 
                        </asp:WizardStep>
                        
                       
                       
                       
                        
                    </WizardSteps>
                    <HeaderTemplate>
                        <ul id="wizHeader">
                            <asp:Repeater ID="SideBarList" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <asp:LinkButton class="<%# GetClassForWizardStep(Container.DataItem) %>" ID="LinkButton1"
                                            Text='<%# Eval("Name")%>' runat="server" CommandArgument='<%# Eval("Name")%>'
                                            OnClick="Selected"> </asp:LinkButton>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </HeaderTemplate>

                </asp:Wizard>
                    <%--OnFinishButtonClick="Wizard1_FinishButtonClick"--%>
                                
            </div>
                </div>
            </div>
                 </div>
      


</asp:Content>

