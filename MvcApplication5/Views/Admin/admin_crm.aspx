<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList <MvcApplication5.CUSTOMER>>" %>
<%@ Import namespace="PagedList" %>
<%@ Import namespace="PagedList.Mvc" %>
    

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
   <div style="display:inline; float:left; width:68%;">



<table class="table table-striped">
     <tr>
         <th>아이디</th>
         <th>회원번호</th>
         <th>이름</th>
         <th>핸드폰번호</th>
     </tr>
    <% foreach (var item in Model) { %>
      <tr>
              <th>   <div class=""><%: Html.DisplayFor(modelItem => item.CST_ID) %></div>     </th>         
               <th> <div class=""><%: Html.DisplayFor(modelItem => item.CST_NUM) %></div>   </th>
               <th> <div class=""><%: Html.DisplayFor(modelItem => item.CST_NAME) %></div>   </th>
               <th> <div class=""><%: Html.DisplayFor(modelItem => item.CST_PHONE_A) %></div>  </th>
          </tr>     
    <% } %>

 </table>

          </div>

    <div id='Paging' style="text-align:center">
     <%:Html.PagedListPager(Model, page => Url.Action("admin_crm", new { currentFilter = ViewBag.CurrentFilter, page }))%>
    </div>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="head1" runat="server">

</asp:Content>

