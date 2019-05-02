<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddBrand.aspx.cs" Inherits="Smart_Online_Shopping.AddBrand" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Brand</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Brand Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtBrand" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="The Brand Name is Required !" ControlToValidate="txtBrand"></asp:RequiredFieldValidator>
                    </div>
            </div>
             </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnaddBrand" runat="server" Text="Add Brand" OnClick="btnaddBrand_Click"/>
                    </div>
            </div>
         </div>
</asp:Content>
