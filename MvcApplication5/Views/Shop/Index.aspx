<% @ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList <MvcApplication5.Goods>>" %>
<%@ Import namespace="PagedList" %>
<%@ Import namespace="PagedList.Mvc" %>
    
  
  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row content">
        <div  style="height:auto;">
            <% Html.RenderAction("Goods", new { model = Model });%>
        </div>
    </div>
          
    <div id='Paging' style="text-align:center">
     <%:Html.PagedListPager(Model, page => Url.Action("Index", new { currentFilter = ViewBag.CurrentFilter, page }))%>
    </div>

</asp:Content>


