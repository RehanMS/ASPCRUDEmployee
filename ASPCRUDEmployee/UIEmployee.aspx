<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UIEmployee.aspx.cs" Inherits="ASPCRUDEmployee.UIEmployee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <style>
        .round{
            border:2px solid black;
            _moz-border-radius:10px;
            _webkit-border-radius:10px;
            border-radius:10px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="d-flex justify-content-center m-4">
            <div class="card">
                <div class="m-5">
                    <h2 class ="tab-content m-4 alert alert-info">Employee Registration</h2>
                    <div>
                        <asp:Label ID="lbluname" runat="server" Text="User Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtuname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblpassword" runat="server" Text="Password"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtpassword" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblfname" runat="server" Text="First Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtfname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lbllname" runat="server" Text="Last Name"></asp:Label>
                        <asp:TextBox CssClass="form-control" ID="txtlname" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Label ID="lblqual" runat="server" Text="Qualification"></asp:Label>
                        <asp:DropDownList CssClass="form-control" ID="ddlqual" runat="server">
                            <asp:ListItem Value="Select"/>
                             <asp:ListItem Value="B.Tech"/>
                             <asp:ListItem Value="Intermidiate"/>
                             <asp:ListItem Value="Matriculation"/>
                             <asp:ListItem Value="Post Graduation"/>
                        </asp:DropDownList>
                    </div>
                    <div>
                        <asp:Label ID="lblgender" runat="server" Text="Gender"></asp:Label>
                        <asp:RadioButton ID="gender1" runat="server" GroupName="Gender" Text="Male" CssClass="form-check" />
                        <asp:RadioButton ID="gender2" runat="server" GroupName="Gender" Text="FeMale" CssClass="form-check"/>
                    </div>
                    <div>
                        <asp:Label ID="lbldsg" runat="server" Text="Designation"></asp:Label>
                        <asp:DropDownList CssClass="form-control" ID="ddldsg" runat="server">
                            <asp:ListItem Value="Select"/>
                             <asp:ListItem Value="Developer"/>
                             <asp:ListItem Value="Admin"/>
                             <asp:ListItem Value="Manager"/>
                        </asp:DropDownList>
                    </div>
                    <div class="mt-2">
                        <asp:Button CssClass="btn btn-outline-info" ID="btnsubmit" runat="server" Text="Register" OnClick="btnsubmit_Click" />
                         <asp:Button CssClass="btn btn-outline-danger" ID="btndelete" runat="server" Text="Delete" OnClick="btndelete_Click" />
                         <asp:Button CssClass="btn btn-outline-warning" ID="btnupdate" runat="server" Text="Update" OnClick="btnupdate_Click" />
                    </div>
                    <div>
                        <asp:Label ID="lblResult" runat="server" Text=" " class=" txt-success h6"></asp:Label>
                    </div>
                    <div>
                        <asp:GridView class=" round mt-3 ms-5" ID="gvEmployee" runat="server" AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333">
                            <Columns>
                                <asp:BoundField DataField="UserName" HeaderText="UserName" />
                                <asp:BoundField DataField="FirstName" />
                                <asp:BoundField DataField="LastName" />
                                <asp:BoundField DataField="Qualification" />
                                <asp:BoundField DataField="Gender" />
                                <asp:BoundField DataField="Designation" />
                            </Columns>
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F8FAFA" />
                            <SortedAscendingHeaderStyle BackColor="#246B61" />
                            <SortedDescendingCellStyle BackColor="#D4DFE1" />
                            <SortedDescendingHeaderStyle BackColor="#15524A" />
                        </asp:GridView>
                       
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
