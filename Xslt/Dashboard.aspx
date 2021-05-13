﻿<%@ Page Language="c#" MaintainScrollPositionOnPostback="true" CodeBehind="Dashboard.aspx.cs"
    MasterPageFile="~/App_MasterPages/layout.Master" AutoEventWireup="false"
    Inherits="CanhCam.Web.AccountUI.DashboardPage" %>

    <%@ Register TagPrefix="Site" TagName="AccountMenu" Src="~/Account/AccountMenu.ascx" %>
        <asp:Content ContentPlaceHolderID="mainContent" ID="MPContent" runat="server">
            <div class="container profile-container">
                <div class="user-sidemenu">
                    <div class="row flex flex-wrap">
                        <Site:AccountMenu ID="accountMenu" runat="server" />
                        <div class="col-lg-9">
                            <div class="user-page clearfix">
                                <h1 class="postname">
                                    <asp:Literal ID="litHeading" Text="Bản thông tin của tôi" runat="server" />
                                </h1>
                                <div>
                                    <asp:Xml ID="xmlTransformer" runat="server"></asp:Xml>
                                    <div id="divPager" runat="server" class="pages productpager">
                                        <portal:gbCutePager ID="pgr" runat="server" />
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </asp:Content>