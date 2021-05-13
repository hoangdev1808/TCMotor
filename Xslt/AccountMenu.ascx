<%@ Control Language="C#" AutoEventWireup="false" CodeBehind="AccountMenu.ascx.cs" Inherits="CanhCam.Web.AccountUI.AccountMenu" %>

<div class="col-lg-3">
    <section class="user-sidebar clearfix">
        <div class="userinfo clearfix">
            <figure>
                <portal:Avatar ID="userAvatar" CssClass="user-img" runat="server" />
                <figcaption>
                    <div class="title">Tài khoản của</div>
                    <div class="user-name">
                        <asp:Literal ID="lblUserName" runat="server" />
                    </div>
                </figcaption>
            </figure>
        </div>
    </section>
    <nav class="user-sidelink clearfix">
        <ul>
            <asp:Literal ID="litDashboard" runat="server" />
            <asp:Literal ID="litProductVariant" runat="server" />
            <asp:Literal ID="litChangePassword" runat="server" />
        </ul>
    </nav>
</div>
<style>
main{
    padding-top: 100px;
}
</style>