<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reg.aspx.cs" Inherits="Campus_test1.Index" %>

<!DOCTYPE html>
<html>
<head>
<title>Font Awesome Icons</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css" />
    <link rel="stylesheet" href="css/brands.min.css" />
    <link rel="stylesheet" href="css/all.css" />
<script src="js/jquery-3.6.0.js"></script>
<script src="js/bootstrap.js"></script>


    <style type="text/css">
        .auto-style1 {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-flow: row wrap;
            flex-flow: row wrap;
            -ms-flex-align: center;
            align-items: center;
            text-align: center;
        }
       .chl tr{display:inline-block}
    </style>


</head>
<body>
    <div>
        <form role="form" runat="server" >
       <div class="row" >
           <div class="col-4"></div>
           <div class="col-4">
<div class="card text-center">
  <div class="card-header">
    Registration
  </div>
  <div class="card-body">
      
             <div class="form-group">
   
  <asp:TextBox ID="TextBox_id" class="form-control" placeholder="Id" runat="server"></asp:TextBox>

             </div>
           <div class="form-group">
   
  <asp:TextBox ID="TextBox_name" class="form-control" placeholder="Name" runat="server"></asp:TextBox>

             </div>
           <div class="form-group">
   
  <asp:TextBox ID="TextBox_Phno" class="form-control" placeholder="Phone Number" runat="server"></asp:TextBox>

             </div>
           <div class="form-group">
   
  <asp:TextBox ID="TextBox_email" class="form-control" placeholder="Email" runat="server"></asp:TextBox>

             </div>
           <div class="form-group">
           <div class="auto-style1">
             &nbsp;&nbsp;&nbsp;&nbsp;
  <asp:DropDownList ID="DropDownList_city" class="form-control" runat="server"  OnSelectedIndexChanged="DropDownList_city_SelectedIndexChanged" >
               <asp:ListItem>City</asp:ListItem>
               <asp:ListItem>BBSR</asp:ListItem>
               <asp:ListItem>CTC</asp:ListItem>
               <asp:ListItem>Puri</asp:ListItem>
               <asp:ListItem>Khordha</asp:ListItem>
               <asp:ListItem>Baleswar</asp:ListItem>
             </asp:DropDownList>
             </div>
               </div>
          
           
 <div class="form-inline">
               <label>Technology&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>

     <asp:CheckBoxList ID="CheckBoxList1" CssClass="chl" runat="server" >
       
         <asp:ListItem Value="1"  >.Net</asp:ListItem>
         <asp:ListItem Value="2" >Java</asp:ListItem>
         <asp:ListItem Value="3" >Python</asp:ListItem>
         <asp:ListItem Value="4" >React</asp:ListItem>
               </asp:CheckBoxList>
     </div>
           <div class="form-inline">
               <label>Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
               <asp:RadioButton ID="RadioButton_male" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" GroupName="g" />
               <asp:RadioButton ID="RadioButton_female" runat="server" Text="Female" GroupName="g" />
               <asp:RadioButton ID="RadioButton_other" runat="server" Text="Other" GroupName="g" />

           &nbsp;&nbsp;
           
     </div>
            <div class="form-inline">
    <label for="FileUpload1">Photo</label>
    <asp:FileUpload ID="FileUpload1" class="form-control-file" runat="server" OnDataBinding="FileUpload1_DataBinding" />
  </div>
           <div class="card-footer text-muted">
      <asp:Button ID="Button_sub" CssClass="btn btn-primary" runat="server" Text="Submit" OnClick="Button_sub_Click" />
      <asp:Button ID="Button_res" CssClass="btn btn-danger" runat="server" Text="Reset" />
  </div>
           
      
   
  </div>
  
</div>
           </div>
           <div class="col-4">
               
              
               
           </div>
       </div>
            <div class="row">
                <div class="col-3"></div>
                <div class="col-6">
               
 <asp:GridView ID="GridView1" CssClass="table table-bordered table-hover table-dark table-responsive-sm" runat="server" AutoGenerateColumns="False" OnRowCancelingEdit="Cancel" OnRowCreated="GridView1_RowCreated" OnRowEditing="GridView1_RowEditing" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="2" ShowFooter="True">
                   <Columns>
                       <asp:TemplateField>
                           <ItemTemplate>
                               <asp:CheckBox ID="Select" runat="server" />
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField>
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox3" runat="server" Text='<%# Eval("id") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <HeaderTemplate>
                               Id
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label1" runat="server" Text='<%# Eval("id") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField>
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox1" runat="server" Text='<%# Eval("name") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <HeaderTemplate>
                               Name
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label2" runat="server" Text='<%# Eval("name") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:TemplateField>
                           <EditItemTemplate>
                               <asp:TextBox ID="TextBox2" runat="server" Text='<%# Eval("phone2") %>'></asp:TextBox>
                           </EditItemTemplate>
                           <HeaderTemplate>
                               Phone
                           </HeaderTemplate>
                           <ItemTemplate>
                               <asp:Label ID="Label3" runat="server" Text='<%# Eval("phone2") %>'></asp:Label>
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:ImageField DataImageUrlField="photo" >
                           <ControlStyle Height="110px" Width="110px" />
                           <ItemStyle Height="20px" Width="20px" />
                       </asp:ImageField>
                       <asp:TemplateField>
                           <ItemTemplate>
                               <asp:Button ID="btn_edit" runat="server" CommandArgument='<%# Eval("id") %>' OnClick="btn_edit_Click" Text="edit" />
                               <asp:Button ID="btn_del" runat="server" Text="delete" BorderStyle="None" CommandArgument='<%# Eval("id") %>' OnClick="btn_del_Click" />
                           </ItemTemplate>
                       </asp:TemplateField>
                       <asp:CommandField ButtonType="Button" ShowEditButton="True" />
                   </Columns>
                   <PagerSettings PageButtonCount="2" />
               </asp:GridView>

                </div>
        <div class="col-3"></div>
            </div>
        </form>
    </div>

</body>
</html> 

