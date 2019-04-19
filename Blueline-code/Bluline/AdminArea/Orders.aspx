<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
    CodeFile="Orders.aspx.cs" Inherits="AdminArea_Bus_list" Title="BlueLine: Orders" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Orders List" Font-Size= "X-Large"  
                    ForeColor="blue"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>
 
 
 
 <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate> 
 
 <center>
 
     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
         AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
         BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         DataSourceID="AccessDataSource1" Height="143px" Width="560px" EnableModelValidation="True">
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <RowStyle ForeColor="#000066" />
         <Columns>
             <asp:BoundField DataField="Pnr" HeaderText="Pnr" 
                 SortExpression="Pnr" />
             <asp:BoundField DataField="C_name" HeaderText="Customer name" 
                 SortExpression="C_name" />
             <asp:BoundField DataField="C_phone" HeaderText="Customer phone" SortExpression="C_phone" />
             <asp:BoundField DataField="C_to" HeaderText="Customer Destination" 
                 SortExpression="C_to" />
             <asp:BoundField DataField="C_from" HeaderText="Customer Current Location" 
                 SortExpression="C_from" />
             <asp:BoundField DataField="C_date" HeaderText="Date" SortExpression="C_date" />
             <asp:BoundField DataField="C_time" HeaderText="Time" SortExpression="C_time" />
             <asp:BoundField DataField="Totalseat" HeaderText="Total Seats" SortExpression="Totalseat" />
             <asp:BoundField DataField="Seatnumber" HeaderText="Seat Number" SortExpression="Seatnumber" />
             <asp:BoundField DataField="Amount" HeaderText="Amount" SortExpression="Amount" />
             <asp:BoundField DataField="Agent_id" HeaderText="Agent code" SortExpression="Agent_id" />
             <asp:BoundField DataField="Status" HeaderText="Status" SortExpression="Status" />
         </Columns>
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
     </asp:GridView>


     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
         DataFile="~/db/blueline.mdb" 
         SelectCommand="SELECT * FROM [passengerinfo]" DeleteCommand="DELETE FROM [passengerinfo] WHERE [ID] = ?" InsertCommand="INSERT INTO [passengerinfo] ([ID], [Pnr], [C_name], [C_phone], [C_to], [C_from], [C_date], [C_time], [Totalseat], [Seatnumber], [Amount], [Agent_id], [Status]) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [passengerinfo] SET [Pnr] = ?, [C_name] = ?, [C_phone] = ?, [C_to] = ?, [C_from] = ?, [C_date] = ?, [C_time] = ?, [Totalseat] = ?, [Seatnumber] = ?, [Amount] = ?, [Agent_id] = ?, [Status] = ? WHERE [ID] = ?">
     </asp:AccessDataSource>

</center>
</ContentTemplate></asp:UpdatePanel> 
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

