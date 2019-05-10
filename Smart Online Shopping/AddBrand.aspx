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
      <div class="form-horizontal">
          <h2>Brands</h2>
             <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Brands</div>
              <asp:Repeater ID="RepeaterBrand" runat="server">
               <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Brand</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("BrandID") %></th>
                        <td><%# Eval("BName") %></td>
                        <td>Edit</td>
                    </tr>
                </ItemTemplate>
                <FooterTemplate>
                    </tbody>
            </table>
                </FooterTemplate>
              </asp:Repeater>
            </div>
          </div>
</asp:Content>
