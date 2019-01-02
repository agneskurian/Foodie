<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="nearestshop.aspx.cs" Inherits="Guest_nearestshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:BoundField DataField="HotelName" HeaderText="HotelName" SortExpression="HotelName" />
            <asp:BoundField DataField="image" HeaderText="image" SortExpression="image" />
            <asp:BoundField DataField="Location" HeaderText="Location" SortExpression="Location" />
            <asp:BoundField DataField="Deliverytime" HeaderText="Deliverytime" SortExpression="Deliverytime" />
        </Columns>

    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [image], [Location], [Deliverytime] FROM [tbl_add_hotel_details] WHERE ([City] = @City)">
        <SelectParameters>
            <asp:Parameter Name="City" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT DISTINCT [City] FROM [tbl_add_hotel_details] WHERE ([City] = @City)">
        <SelectParameters>
            <asp:Parameter DefaultValue="City" Name="City" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    <%--<asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
        <ItemTemplate>
            HotelName:
            <asp:Label ID="HotelNameLabel" runat="server" Text='<%# Eval("HotelName") %>' />
            <br />
            image:
            <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />
            <br />
            Location:
            <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
            <br />
            Facility:
            <asp:Label ID="FacilityLabel" runat="server" Text='<%# Eval("Facility") %>' />
            <br />
            Deliverytime:
            <asp:Label ID="DeliverytimeLabel" runat="server" Text='<%# Eval("Deliverytime") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [image], [Location], [Facility], [Deliverytime] FROM [tbl_add_hotel_details] WHERE (([Status] = @Status) AND ([City] = @City))">
        <SelectParameters>
            <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
            <asp:Parameter Name="City" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>--%>

  <%--<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="shopid">
        <Columns>
            <asp:BoundField DataField="shopid" HeaderText="shopid" ReadOnly="True" SortExpression="shopid" />
            <asp:BoundField DataField="shopname" HeaderText="shopname" SortExpression="shopname" />
            <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            <asp:BoundField DataField="mobile" HeaderText="mobile" SortExpression="mobile" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [shopid], [shopname], [city], [mobile] FROM [dbshopregister] WHERE (([city] = @city) AND ([shopid] = @shopid))">
        <SelectParameters>
            <asp:Parameter DefaultValue="city" Name="city" Type="String" />
            <asp:SessionParameter Name="shopid" SessionField="shopid" Type="String" />
        </SelectParameters>
</asp:SqlDataSource>--%>
</asp:Content>

