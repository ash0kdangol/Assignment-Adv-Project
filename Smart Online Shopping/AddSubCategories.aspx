<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddSubCategories.aspx.cs" Inherits="Smart_Online_Shopping.AddSubCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Sub Categories</h2>
            <hr />
         </div>
           <div class="form-group">
                 <div class="form-group">
                <asp:Label ID="Label4" runat="server" CssClass="col-md-2 control-label" Text="Categories"></asp:Label>
                <div class="col-md-3">
                    <asp:DropDownList ID="ddlcategories" CssClass="form-control" runat="server"></asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" CssClass="text-danger" runat="server" ErrorMessage="This field is Required !" ControlToValidate="ddlcategories"></asp:RequiredFieldValidator>
                </div>
            </div>
            </div>
         <div class="form-group">
                    <asp:Label ID="Label1" 
                        runat="server" 
                        CssClass="col-md-2 control-label" 
                        Text="Sub Category Name">
                    </asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtSubCatName"
                            CssClass="form-control" 
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            CssClass="text-danger" 
                            runat="server" 
                            ErrorMessage="The Category Name is Required !" 
                            ControlToValidate="txtSubCatName">
                        </asp:RequiredFieldValidator>
                    </div>
            </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnaddSubCategory" 
                            runat="server" 
                            Text="Add Sub Category" 
                            OnClick="btnaddSubCategory_Click"/>
                    </div>
            </div>
         </div>
</asp:Content>
