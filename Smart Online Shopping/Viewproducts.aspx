<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Viewproducts.aspx.cs" Inherits="Smart_Online_Shopping.Viewproducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div style="padding-top: 50px">
            <div class="col-md-5">
                <div style="max-width: 480px" class="thumbnail">
                    <img src="Images/ProductImage/2048358.jpg" />"
                </div>
            </div>
        </div>
        <div class="col-md-7">
            <div class="divDet1">
                <div class="proName">COCOBELLA 100% Natural Coconut Water</div>
                <h1 class="proNameview">Cocobella Water</h1>
                <div class="proprice">$2.50 </div>
        </div>
                 <h3>Product Details </h3>
                      <p>Cocobella contains the water from young green coconuts which is naturally rich in electrolytes (Potassium, Calcium, magnesium, Sodium & Phosphorous) delivering pure & natural hydration.</p>
                </div>
        <div class="col-md-7">
            <div class="divDet1">
                <asp:Button ID="btnAddtoCart" runat="server" Text="ADD TO CART" CssClass="mainButton" OnClick="btnAddtoCart_Click" />
                <asp:Label ID="LblError" runat="server" CssClass="text-danger"></asp:Label>
                   </div>
               </div>
</asp:Content>
