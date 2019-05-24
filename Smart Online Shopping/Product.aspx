<%@ Page Title="" Language="C#" MasterPageFile="~/UserMaster.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Smart_Online_Shopping.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class ="row" style="padding-top: 50px">
          <asp:Repeater ID="rptrProduct" runat="server">
              <ItemTemplate>
             <div class="col-sm-6 col-md-4" >
              <a style="text-decoration:none;" href="Viewproducts.aspx?PID=<%#Eval("PID") %>">
                 <img src="Images/ProductImage/2048358.jpg" alt="Cocobella" />
                 <div class="thumbnail">
                     <div class="caption">
                        <div class="probrand"><%#Eval("BrandName") %></div>
                        <div class="proName"><%#Eval("PName") %></div>
                        <div class="proprice"><%#Eval("PPrice") %></div>       
                         
                    </div>
                </div>
                  </a>
            </div>
           </ItemTemplate>
          </asp:Repeater>
       
    </div>
</asp:Content>
