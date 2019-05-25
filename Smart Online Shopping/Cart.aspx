<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Smart_Online_Shopping.Cart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
         <div class="media" style="border: 1px solid #eaeaec;">
            <div class="media-left">
                <a href="ProductView.aspx?PID=<%#Eval("PID") %>" target="_blank">
                    <img class="media-object" src="Images/ProductImages/<%#Eval("PID") %>/<%#Eval("Name") %><%#Eval("Extension") %>" alt="<%#Eval("Name") %>" onerror="this.src='images/noimage.jpg'">
                </a>
            </div>
            <div class="media-body">
                <h5 class="media-heading proNameViewCart"><%#Eval("PName") %></h5>
                <span class="proPriceView"><%#Eval("PSelPrice","{0:c}") %></span>
                <span class="proOgPriceView"><%#Eval("PPrice","{0:0,00}") %></span>
            </div>
        </div>

</asp:Content>
