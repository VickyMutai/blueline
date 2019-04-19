<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
    CodeFile="Bus_list.aspx.cs" Inherits="AdminArea_Bus_list" Title="BlueLine: Bus List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <table align="center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Bus List" Font-Size= "X-Large"  
                    ForeColor="blue"></asp:Label>
                    </strong>
           <br /> 
                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/AdminArea/Default.aspx">ADD NEW BUS</asp:LinkButton>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
    </table>
 
 
 
 <asp:UpdatePanel ID="up1" runat="server"><ContentTemplate> 
 
 <center>
 
     <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
         AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" 
         BorderStyle="None" BorderWidth="1px" CellPadding="3" 
         DataSourceID="AccessDataSource1" Height="143px" Width="560px" DataKeyNames="Sno" EnableModelValidation="True">
         <FooterStyle BackColor="White" ForeColor="#000066" />
         <RowStyle ForeColor="#000066" />
         <Columns>
             <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
             <asp:BoundField DataField="Sno" HeaderText="Station ID" SortExpression="Sno" ReadOnly="True" />
             <asp:BoundField DataField="Station_name" HeaderText="Station Name" 
                 SortExpression="Station_name" />
             <asp:BoundField DataField="Rate_per_seat" HeaderText="Rate per seat" 
                 SortExpression="Rate_per_seat" />
             <asp:BoundField DataField="Time" HeaderText="Departure Time" SortExpression="Time" />
             <asp:BoundField DataField="Reach_time" HeaderText="Arrival time" 
                 SortExpression="Reach_time" />
             <asp:BoundField DataField="Bus_number" HeaderText="Plate Number" 
                 SortExpression="Bus_number" />
         </Columns>
         <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
         <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
         <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
     </asp:GridView>


     <asp:AccessDataSource ID="AccessDataSource1" runat="server" 
         DataFile="~/db/blueline.mdb" 
         SelectCommand="SELECT [Sno], [Station_name], [Rate_per_seat], [Time], [Reach_time], [Bus_number] FROM [Time_list]" DeleteCommand="DELETE FROM [Time_list] WHERE [Sno] = ?" InsertCommand="INSERT INTO [Time_list] ([Sno], [Station_name], [Rate_per_seat], [Time], [Reach_time], [Bus_number]) VALUES (?, ?, ?, ?, ?, ?)" UpdateCommand="UPDATE [Time_list] SET [Station_name] = ?, [Rate_per_seat] = ?, [Time] = ?, [Reach_time] = ?, [Bus_number] = ? WHERE [Sno] = ?">
         <DeleteParameters>
             <asp:Parameter Name="Sno" Type="Decimal" />
         </DeleteParameters>
         <InsertParameters>
             <asp:Parameter Name="Sno" Type="Decimal" />
             <asp:Parameter Name="Station_name" Type="String" />
             <asp:Parameter Name="Rate_per_seat" Type="Decimal" />
             <asp:Parameter Name="Time" Type="String" />
             <asp:Parameter Name="Reach_time" Type="String" />
             <asp:Parameter Name="Bus_number" Type="String" />
         </InsertParameters>
         <UpdateParameters>
             <asp:Parameter Name="Station_name" Type="String" />
             <asp:Parameter Name="Rate_per_seat" Type="Decimal" />
             <asp:Parameter Name="Time" Type="String" />
             <asp:Parameter Name="Reach_time" Type="String" />
             <asp:Parameter Name="Bus_number" Type="String" />
             <asp:Parameter Name="Sno" Type="Decimal" />
         </UpdateParameters>
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

