<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tip Calculator.aspx.cs" Inherits="WebApp1.Tip_Calculator" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div>
    Bill Amount: <asp:TextBox runat="server" id="txtBill"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
        runat="server" ErrorMessage="Put in an amount, Yo!" ControlToValidate="txtBill" Display="Dynamic">
    </asp:RequiredFieldValidator>
    <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Invalid number!"
        ControlToValidate="txtBill" MaximumValue="999999" MinimumValue="0" Type="Currency" Display="Dynamic">
    </asp:RangeValidator>
</div>
<div>
    Tip %: <asp:DropDownList runat="server" id="ddlTip">
        <asp:ListItem value=".1" text="10"></asp:ListItem>
        <asp:ListItem value=".15" text="15"></asp:ListItem>
        <asp:ListItem value=".2" text="20"></asp:ListItem>
    </asp:DropDownList>
</div>

<asp:Button runat="server" id="btnCalc" text="Calculate" onclick="btnCalc_Click" />

<div>
    Tip Amount: <asp:Label runat="server" id="lblTipAmnt"></asp:Label>
</div>
<div>
    Total: <asp:Label runat="server" id="lblTotal"></asp:Label>
</div>
</asp:Content>
