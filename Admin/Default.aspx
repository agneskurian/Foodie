<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMaster.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <div class="col-lg-8 col-lg-offset-2 detailed mt">
                        <h4 class="mb">View Hote Details</h4>
   

    <asp:Label ID="Label1" runat="server" Text="Search with city"></asp:Label><asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" DataSourceID="SqlDataSource1" DataTextField="City" DataValueField="City"></asp:DropDownList><asp:ImageButton ID="ImageButton1" runat="server" Height="20" ImageUrl="img/portfolio/search.png" />
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT DISTINCT [City] FROM [tbl_add_hotel_details]"></asp:SqlDataSource>
                        <br />
                        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource2" Visible="False">
                            <ItemTemplate>
                                HotelName:
                                <asp:Label ID="HotelNameLabel" runat="server" Text='<%# Eval("HotelName") %>' />
                                <br />
                                <asp:Image ID="Image1" runat="server" Height="100px" ImageUrl='<%# Eval("image") %>' />

<%--                                <asp:Label ID="imageLabel" runat="server" Text='<%# Eval("image") %>' />--%>
                                <br />
                                Location:
                                <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                                <br />
<br />
                            </ItemTemplate>
                        </asp:DataList>
                        <br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [image], [Location] FROM [tbl_add_hotel_details] WHERE (([Status] = @Status) AND ([City] = @City))">
                            <SelectParameters>
                                <asp:Parameter DefaultValue="Approved" Name="Status" Type="String" />
                                <asp:ControlParameter ControlID="DropDownList1" Name="City" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                        </asp:SqlDataSource>
</div>
</asp:Content>

