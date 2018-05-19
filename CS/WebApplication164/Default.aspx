<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication164._Default" %>

<%@ Register Assembly="DevExpress.Web.ASPxEditors.v8.3, Version=8.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dxe" %>

<%@ Register Assembly="DevExpress.Web.ASPxGridView.v8.3, Version=8.3.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
    Namespace="DevExpress.Web.ASPxGridView" TagPrefix="dxwgv" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <dxwgv:ASPxGridView ID="ASPxGridView1" runat="server" DataSourceID="AccessDataSource1" AutoGenerateColumns="False" KeyFieldName="ID" ClientInstanceName="grid">
            <Columns>
                <dxwgv:GridViewDataTextColumn FieldName="ID" VisibleIndex="0">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="FirstName" VisibleIndex="1">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="LastName" VisibleIndex="2">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Company" VisibleIndex="3">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="Address" VisibleIndex="4">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="City" VisibleIndex="5">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="State" VisibleIndex="6">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="ZipCode" VisibleIndex="7">
                </dxwgv:GridViewDataTextColumn>
                <dxwgv:GridViewDataTextColumn FieldName="HomePhone" VisibleIndex="8">
                </dxwgv:GridViewDataTextColumn>
            </Columns>
            <Templates>
                <DataRow>
                    <div style="padding:5px">
                        <table width="100%" style="background-color:Silver">
                        <tr><td>First Name:&nbsp;<%# Eval("FirstName") %>
                        </td><td>Last Name:&nbsp;<%# Eval("LastName") %>
                        </td></tr><tr><td colspan="2">
                            <table width="100%">
                            <tr><td>State:&nbsp;<%# Eval("State") %>
                            </td><td>City:&nbsp;<%# Eval("City") %>
                            </td><td>Address:&nbsp;<%# Eval("Address") %>
                            </td></tr></table>
                        </td></tr>
                        <tr><td colspan="2">Company:&nbsp;<%# Eval("Company") %>
                        </td></tr></table>
                    <dxe:ASPxButton ID="ASPxButton2" runat="server" Text="Edit" AutoPostBack="False" ClientSideEvents-Click='<%# "function(s, e) { grid.StartEditRow(" + Container.VisibleIndex + "); }" %>'>
                    </dxe:ASPxButton>
                    </div>
                </DataRow>
                <StatusBar>
                    <dxe:ASPxButton ID="ASPxButton1" runat="server" Text="New" AutoPostBack="False" ClientSideEvents-Click="function(s, e) { grid.AddNewRow(); }">
                    </dxe:ASPxButton>
                </StatusBar>
                <EditForm>
                    <div>
                        <table width="100%" style="background-color:Silver"><tr><td>First Name:
                            <dxe:ASPxTextBox ID="ASPxTextBox1" runat="server" Value='<%# Bind("FirstName") %>' Width="100%">
                            </dxe:ASPxTextBox>
                        </td><td>Last Name:
                            <dxe:ASPxTextBox ID="ASPxTextBox2" runat="server" Value='<%# Bind("LastName") %>' Width="100%">
                            </dxe:ASPxTextBox>
                        </td></tr><tr><td colspan="2">
                            <table width="100%"><tr><td>State:
                                <dxe:ASPxTextBox ID="ASPxTextBox3" runat="server" Value='<%# Bind("State") %>' Width="100%">
                                </dxe:ASPxTextBox>
                            </td><td>City:
                                <dxe:ASPxTextBox ID="ASPxTextBox4" runat="server" Value='<%# Bind("City") %>' Width="100%">
                                </dxe:ASPxTextBox>
                            </td><td>Address:
                                <dxe:ASPxTextBox ID="ASPxTextBox5" runat="server" Value='<%# Bind("Address") %>' Width="100%">
                                </dxe:ASPxTextBox>
                            </td></tr></table>
                        </td></tr><tr><td colspan="2">Company:
                            <dxe:ASPxTextBox ID="ASPxTextBox6" runat="server" Value='<%# Bind("Company") %>' Width="100%">
                            </dxe:ASPxTextBox>
                        </td></tr></table>
                    </div>
                    <dxwgv:ASPxGridViewTemplateReplacement runat="server" ReplacementType="EditFormUpdateButton" />
                    <dxwgv:ASPxGridViewTemplateReplacement runat="server" ReplacementType="EditFormCancelButton" />
                </EditForm>
            </Templates>
            <Settings ShowColumnHeaders="False" ShowStatusBar="Visible" />
            <SettingsEditing Mode="EditForm" />
        </dxwgv:ASPxGridView>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/Contacts.mdb" SelectCommand="SELECT * FROM [Customers]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
