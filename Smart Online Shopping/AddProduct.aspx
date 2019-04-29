<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddProduct.aspx.cs" Inherits="Smart_Online_Shopping.AddProduct" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Product</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="Product Name"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtPName" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidatorUsername" CssClass="text-danger" runat="server" ErrorMessage="The Product Name is Required !" ControlToValidate="txtPName"></asp:RequiredFieldValidator>
                    </div>
            </div>
            <div class="form-group">
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Selling Price"></asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtsprice" CssClass="form-control" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="txtSprice"></asp:RequiredFieldValidator>
                    </div>
            </div>
              <div class="form-group">
                    <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnaddproduct" runat="server" Text="Add Product" OnClick="btnaddproduct_Click"/>
         </div>
    </div>
</asp:Content>
