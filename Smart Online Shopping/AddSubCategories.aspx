<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddSubCategories.aspx.cs" Inherits="Smart_Online_Shopping.AddSubCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="container">
        <div class="form-horizontal">
            <h2>Add Sub Categories</h2>
            <hr />
        
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
                        <asp:Button ID="BtnAddSubCategories" runat="server" Text="Add Sub Categories" OnClick="BtnAddSubCategories_Click" />
                    </div>
            </div>
         </div>
          </div>
              <div class="form-horizontal">
          <h2>Categories</h2>
             <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Categories</div>
              <asp:Repeater ID="RepeaterSubCategory" runat="server">
               <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Sub Category</th>
                                <th>Main Category</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("SubCatID") %></th>
                        <td><%# Eval("SubCatName") %></td>
                        <td><%# Eval("CatName") %></td>
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
