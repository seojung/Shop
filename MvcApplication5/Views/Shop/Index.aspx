<% @ Page Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList <MvcApplication5.Goods>>" %>
<%@ Import namespace="PagedList" %>
<%@ Import namespace="PagedList.Mvc" %>
    
  
  
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="row content">
       <div class="col-sm-3 sidenav hidden-xs" style="height:600px;float:left" id="toggle">
          <h2>Logo</h2>
          <ul class="nav nav-pills nav-stacked">
            <li class="active"><a href="#section1">Dashboard</a></li>
            <li><a href="#section2">Age</a></li>
            <li><a href="#section3">Gender</a></li>
            <li><a href="#section3">Geo</a></li>
          </ul>
       </div>
       
        <div style="height:600px;margin-left:10px; float:left;vertical-align:middle;">
            <a id="slides" class="w3-btn-floating w3-ripple w3-teal">></a>
        </div>
         
        <div  style="height:auto;">
            <% Html.RenderAction("Goods", new { model = Model });%>
        </div>
    </div>
          
    <div id='Paging' style="text-align:center">
     <%:Html.PagedListPager(Model, page => Url.Action("Index", new { currentFilter = ViewBag.CurrentFilter, page }))%>
    </div>

</asp:Content>


