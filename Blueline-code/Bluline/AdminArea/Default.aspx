<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" 
    CodeFile="Default.aspx.cs" Inherits="AdminArea_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content1" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <table align="center" style="text-align:center">
        <tr>       
            <td>
               <strong> <asp:Label ID="lblheat" runat="server" Text="Agent Info" Font-Size= "X-Large"  
                    ForeColor="blue"></asp:Label>
                    </strong>
           <br /> </td>
        </tr>
        <tr><td>&nbsp;</td></tr>
        <tr><td>
    
    <table border="0" align="left" style="text-align:left">
        <tr>
            <td align="center" colspan="3" style="font-weight:bold">
                Enter Your Basic Information
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblsno" runat="server" AssociatedControlID="txtsno"> 
                                station no:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtsno" runat="server"></asp:TextBox>
                
            </td>
            <td ><asp:RequiredFieldValidator runat="server" ErrorMessage="*" 
                    ControlToValidate="txtsno" Display="Dynamic" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblstation" runat="server" AssociatedControlID="txtstation"> 
                                Station:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtstation" runat="server"></asp:TextBox>
                
            </td>
            <td ><asp:RequiredFieldValidator runat="server" ErrorMessage="*" 
                    ControlToValidate="txtstation" Display="Dynamic" ></asp:RequiredFieldValidator></td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="lblcost" runat="server" AssociatedControlID="txtcost">  
                                Cost per Seat:</asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtcost" runat="server"></asp:TextBox>
                
            </td>
            <td><asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtcost"  runat="server" ErrorMessage="*" ></asp:RequiredFieldValidator></td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lbltime" runat="server" AssociatedControlID="txttime">Departure Time:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txttime" runat="server"></asp:TextBox>
                  <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txttime"  runat="server" ErrorMessage="*" ></asp:RequiredFieldValidator></td> 
                </td>
            </tr>
            <tr>
                <td align="right">
                    <asp:Label ID="lblarrival" runat="server" AssociatedControlID="txtarrival">Arrival Time:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtarrival" runat="server"></asp:TextBox>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtarrival"  runat="server" ErrorMessage="*" ></asp:RequiredFieldValidator></td> 
                </td>
            </tr>
            
            <tr>
                <td align="right">
                    <asp:Label ID="lblbusno" runat="server" AssociatedControlID="txtbusno">Bus Number:</asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtbusno" runat="server"></asp:TextBox>
                   <td><asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtbusno"  runat="server" ErrorMessage="*" ></asp:RequiredFieldValidator></td> 
                </td>
            </tr>
            <tr>
                <td align="right">
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                  <td>&nbsp;</td>  
                
            </tr>
            
            
            
            
            
            <tr><td></td>
                <td>
                    <asp:Button ID="btnfinish" Text="Finish" runat="server" 
                        onclick="btnfinish_Click" />
                </td>
            </tr>
    </table>
    </td></tr></table>   
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder4" Runat="Server">
</asp:Content>
<asp:Content ID="Content6" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
</asp:Content>

