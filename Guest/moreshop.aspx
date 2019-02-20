<%@ Page Title="" Language="C#" MasterPageFile="~/Guest/FoodieMaster.master" AutoEventWireup="true" CodeFile="moreshop.aspx.cs" Inherits="Guest_moreshop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    			<div class="events-bottom">
				<div class="col-md-6 events_bottom_left">
                <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1">
                 <ItemTemplate>
					 HotelName:
                     <asp:Label ID="HotelNameLabel" runat="server" Text='<%# Eval("HotelName") %>' />
                     <br />
                     HotelType:
                     <asp:Label ID="HotelTypeLabel" runat="server" Text='<%# Eval("HotelType") %>' />
                     <br />
                     image:
                  <asp:Image ID="Image1" runat="server" Height="210px" Width="150px" ImageUrl='<%# Eval("image") %>' />
                     <br />
                     Location:
                     <asp:Label ID="LocationLabel" runat="server" Text='<%# Eval("Location") %>' />
                     <br />
                     Facility:
                     <asp:Label ID="FacilityLabel" runat="server" Text='<%# Eval("Facility") %>' />
                     <br />
                     <br />
                     </ItemTemplate>
                    </asp:DataList>
					<div class="clearfix"> </div>
				</div>

</div>
  <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuickyConnectionString %>" SelectCommand="SELECT [HotelName], [HotelType], [image], [Location], [Facility] FROM [tbl_add_hotel_details] WHERE ([shopid] = @shopid)">
                                        <SelectParameters>
                                                        <asp:QueryStringParameter Name="shopid" QueryStringField="shopid" Type="String" DefaultValue="shopid" />
                                        </SelectParameters>
                                    </asp:SqlDataSource>
 
</asp:Content>

