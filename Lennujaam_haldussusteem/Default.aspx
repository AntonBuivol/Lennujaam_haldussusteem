<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Lennujaam_haldussusteem._Default" %>


<asp:content ID="Connt1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    
    <div>
        <asp:Xml runat="server" DocumentSource="~/lennujaamad.xml" TransformSource="~/LennujaamadLisa.xslt" />
    </div>
</asp:content>