<%@ Page Language="c#" MaintainScrollPositionOnPostback="true" CodeBehind="ProductVariant.aspx.cs"
    MasterPageFile="~/App_MasterPages/layout.Master" AutoEventWireup="false"
    Inherits="CanhCam.Web.AccountUI.ProductVariantPage" %>


    <%@ Register TagPrefix="Site" TagName="AccountMenu" Src="~/Account/AccountMenu.ascx" %>
        <asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
            <div class="container profile-container">
                <div class="user-sidemenu">
                    <div class="row flex flex-wrap">
                        <Site:AccountMenu ID="accountMenu" runat="server" />
                        <div class="col-lg-9">
                            <div class="user-page clearfix">
                                <h1 class="postname">
                                    <asp:Literal ID="litHeading" Text="Nhập giá sản phẩm" runat="server" />
                                </h1>
                                <asp:Panel ID="pnlSearch" CssClass="headInfo form-horizontal" DefaultButton="btnSearch"
                                    runat="server">
                                    <div class="setting form-group">
                                        <gb:SiteLabel ID="lblZones" runat="server" Text="Store" ForControl="ddZones"
                                            CssClass="settinglabel control-label" />
                                        <asp:DropDownList ID="ddStores" AutoPostBack="false" runat="server" />
                                    </div>
                                    <div class="setting form-group">
                                        <gb:SiteLabel ID="SiteLabel1" runat="server" Text="Sản phẩm"
                                            ForControl="ddZones" CssClass="settinglabel control-label" />
                                        <asp:DropDownList ID="ddProducts" AutoPostBack="false" runat="server" />
                                    </div>
                                    <div class="setting form-group">
                                        <gb:SiteLabel ID="lblTitle" runat="server" Text=" " ForControl="txtTitle"
                                            CssClass="settinglabel control-label" />
                                        <asp:Button SkinID="DefaultButton" ID="btnSearch"
                                            Text="<%$Resources:ProductResources, ProductSearchButton %>" runat="server"
                                            CausesValidation="false" />
                                    </div>
                                </asp:Panel>
                                <asp:Button SkinID="UpdateButton" ID="btnUpdate"
                                    Text="<%$Resources:Resource, UpdateButton %>" runat="server" />
                                <telerik:RadGrid ID="grid" SkinID="radGridSkin" runat="server">
                                    <MasterTableView
                                        DataKeyNames="ProductVariantId,StoreId,ProductId,ColorId,ProductType,Code,Quantity,OldPrice,Price"
                                        AllowPaging="false" AllowSorting="false">
                                        <Columns>
                                            <telerik:GridTemplateColumn HeaderStyle-Width="35"
                                                HeaderText="<%$Resources:Resource, RowNumber %>">
                                                <ItemTemplate>
                                                    <%# (grid.PageSize * grid.CurrentPageIndex) + Container.ItemIndex +
                                                        1%>
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn HeaderStyle-Width="115" HeaderStyle-Wrap="false"
                                                HeaderText="<%$Resources:ProductResources, ProductCodeLabel %>"
                                                UniqueName="ProductCode">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtCode" Width="95" MaxLength="50"
                                                        Text='<%# Eval("Code") %>' runat="server" />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn
                                                HeaderText="<%$Resources:ProductResources, ProductNameLabel %>">
                                                <ItemTemplate>
                                                    <p>
                                                        <%# Eval("ProductTitle").ToString() %>
                                                    </p>
                                                    <p>
                                                        <%# Eval("Properties").ToString() %>
                                                    </p>
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn HeaderStyle-Width="100"
                                                HeaderText="<%$Resources:ProductResources, ProductPriceLabel %>"
                                                UniqueName="Price">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtPrice" SkinID="PriceTextBox"
                                                        Style="text-align: right" MaxLength="50"
                                                        Text='<%# CanhCam.Web.ProductUI.ProductHelper.FormatPrice(Convert.ToDecimal(Eval("Price"))) %>'
                                                        runat="server" />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                            <telerik:GridTemplateColumn HeaderStyle-Width="100"
                                                HeaderText="<%$Resources:ProductResources, ProductOldPriceLabel %>"
                                                UniqueName="OldPrice">
                                                <ItemTemplate>
                                                    <asp:TextBox ID="txtOldPrice" SkinID="PriceTextBox"
                                                        Style="text-align: right" MaxLength="50"
                                                        Text='<%# CanhCam.Web.ProductUI.ProductHelper.FormatPrice(Convert.ToDecimal(Eval("OldPrice"))) %>'
                                                        runat="server" />
                                                </ItemTemplate>
                                            </telerik:GridTemplateColumn>
                                        </Columns>
                                    </MasterTableView>
                                </telerik:RadGrid>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Content>