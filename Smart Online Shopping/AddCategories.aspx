<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="AddCategories.aspx.cs" Inherits="Smart_Online_Shopping.AddCategories" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="container">
        <div class="form-horizontal">
            <h2>Add Categories</h2>
            <hr />
            <div class="form-group">
                    <asp:Label ID="Label1" 
                        runat="server" 
                        CssClass="col-md-2 control-label" 
                        Text="Category Name">
                    </asp:Label>
                    <div class="col-md-3">
                        <asp:TextBox ID="txtCatName"
                            CssClass="form-control" 
                            runat="server">
                        </asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                            CssClass="text-danger" 
                            runat="server" 
                            ErrorMessage="The Category Name is Required !" 
                            ControlToValidate="txtCatName">
                        </asp:RequiredFieldValidator>
                    </div>
            </div>
             </div>
            <div class="form-group">
                <div class="col-md-2"></div>
                    <div class="col-md-6">
                        <asp:Button ID="btnaddCategory" 
                            runat="server" 
                            Text="Add Category" 
                            OnClick="btnaddCategory_Click"/>
                    </div>
            </div>
         </div>
          <div class="form-horizontal">
          <h2>Categories</h2>
             <hr />
        <div class="panel panel-default">
            <!-- Default panel contents -->
            <div class="panel-heading">All Categories</div>
              <asp:Repeater ID="RepeaterCategory" runat="server">
               <HeaderTemplate>
                    <table class="table">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>Categories</th>
                                <th>Edit</th>
                            </tr>
                        </thead>
                        <tbody>
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <th><%# Eval("CatID") %></th>
                        <td><%# Eval("catName") %></td>
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
