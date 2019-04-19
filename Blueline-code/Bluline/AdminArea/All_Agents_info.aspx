<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
    CodeFile="All_Agents_info.aspx.cs" Inherits="AdminArea_AllAgents" 
    Title="BlueLine:Agent List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <table align="center" style="text-align:center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Agent List" Font-Size= "X-Large"  
                    ForeColor="blue"></asp:Label>
                    </strong>
           <br /> 
                
                <td style="padding-left:20px;">
                    <asp:Button ID="btnsearch" runat="server" Text="SEARCH" Height="28px" Width="75px" OnClick="btnsearch_Click" />
                </td>
            </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        </table> 
   <asp:UpdatePanel ID="up1" runat="server">
       <ContentTemplate>
           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Agent_id" DataSourceID="AccessDataSource1" EnableModelValidation="True" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="180px" style="margin-left: 0px; margin-right: 0px" Width="954px">
               <Columns>
                   <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                   <asp:BoundField DataField="Agent_id" HeaderText="Agent Code" ReadOnly="True" SortExpression="Agent_id" />
                   <asp:BoundField DataField="Agent_fname" HeaderText="Agent Name" SortExpression="Agent_fname" />
                   <asp:BoundField DataField="Agent_name" HeaderText="Agent Spouse" SortExpression="Agent_name" />
                   <asp:BoundField DataField="Agent_shop_name" HeaderText="Agent Station" SortExpression="Agent_shop_name" />
                   <asp:BoundField DataField="Agent_shop_add" HeaderText="Agent Address" SortExpression="Agent_shop_add" />
                   <asp:BoundField DataField="Agent_shop_city" HeaderText="Agent City" SortExpression="Agent_shop_city" />
                   <asp:BoundField DataField="Agent_mobile_number" HeaderText="Office Number" SortExpression="Agent_mobile_number" />
                   <asp:BoundField DataField="Agent_phone_number" HeaderText="Phone Number" SortExpression="Agent_phone_number" />
               </Columns>
               <FooterStyle BackColor="White" ForeColor="#000066" />
               <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
               <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
               <RowStyle ForeColor="#000066" />
               <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
           </asp:GridView>
           <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/db/blueline.mdb" DeleteCommand="DELETE FROM [AgentBasicInfo] WHERE [Agent_id] = ?" InsertCommand="INSERT INTO [AgentBasicInfo] ([Agent_id], [Agent_fname], [Agent_name], [Agent_shop_name], [Agent_shop_add], [Agent_shop_city], [Agent_mobile_number], [Agent_phone_number]) VALUES (?, ?, ?, ?, ?, ?, ?, ?)" SelectCommand="SELECT [Agent_id], [Agent_fname], [Agent_name], [Agent_shop_name], [Agent_shop_add], [Agent_shop_city], [Agent_mobile_number], [Agent_phone_number] FROM [AgentBasicInfo]" UpdateCommand="UPDATE [AgentBasicInfo] SET [Agent_fname] = ?, [Agent_name] = ?, [Agent_shop_name] = ?, [Agent_shop_add] = ?, [Agent_shop_city] = ?, [Agent_mobile_number] = ?, [Agent_phone_number] = ? WHERE [Agent_id] = ?">
               <DeleteParameters>
                   <asp:Parameter Name="Agent_id" Type="String" />
               </DeleteParameters>
               <InsertParameters>
                   <asp:Parameter Name="Agent_id" Type="String" />
                   <asp:Parameter Name="Agent_fname" Type="String" />
                   <asp:Parameter Name="Agent_name" Type="String" />
                   <asp:Parameter Name="Agent_shop_name" Type="String" />
                   <asp:Parameter Name="Agent_shop_add" Type="String" />
                   <asp:Parameter Name="Agent_shop_city" Type="String" />
                   <asp:Parameter Name="Agent_mobile_number" Type="Decimal" />
                   <asp:Parameter Name="Agent_phone_number" Type="Decimal" />
               </InsertParameters>
               <UpdateParameters>
                   <asp:Parameter Name="Agent_fname" Type="String" />
                   <asp:Parameter Name="Agent_name" Type="String" />
                   <asp:Parameter Name="Agent_shop_name" Type="String" />
                   <asp:Parameter Name="Agent_shop_add" Type="String" />
                   <asp:Parameter Name="Agent_shop_city" Type="String" />
                   <asp:Parameter Name="Agent_mobile_number" Type="Decimal" />
                   <asp:Parameter Name="Agent_phone_number" Type="Decimal" />
                   <asp:Parameter Name="Agent_id" Type="String" />
               </UpdateParameters>
           </asp:AccessDataSource>
       </ContentTemplate>
     </asp:UpdatePanel>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

