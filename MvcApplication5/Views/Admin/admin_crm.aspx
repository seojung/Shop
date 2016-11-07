<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Admin.Master" Inherits="System.Web.Mvc.ViewPage<IPagedList <MvcApplication5.Models.CUSTOMER>>" %>
<%@ Import namespace="PagedList" %>
<%@ Import namespace="PagedList.Mvc" %>
    

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <link rel="stylesheet" href="/Content/css/admin_crm.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css" rel='stylesheet' type='text/css'>
  <% int count = 0; %>
    
        <div class="col-md-10 col-md-offset-1">

            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h3 class="panel-title">고객 리스트</h3>
                  </div>
                  <div class="col col-xs-6 text-right">
                    <button type="button" class="btn btn-sm btn-primary btn-create">Create New</button>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list">
                  <thead>
                    <tr>
                        <th><em class="fa fa-cog"></em></th>
                        <th class="hidden-xs">번호</th>
                        <th class="hidden-xs">ID</th>
                        <th>이름</th>
                        <th>핸드폰번호</th>
                    </tr> 
                  </thead>
                  <tbody>
                      <% foreach (var item in Model)
                         {
                          count++;%>
                        <tr>
                            <td align="center">
                              <a class="btn btn-default"><em class="fa fa-pencil"></em></a>
                              <a class="btn btn-danger"><em class="fa fa-trash"></em></a>
                            </td>
                            <td class="hidden-xs"><%:count%></td>
                            <td><%: Html.DisplayFor(modelItem => item.CST_ID) %></td>
                            <td><%: Html.DisplayFor(modelItem => item.CST_NAME) %></td>
                            <td><%: Html.DisplayFor(modelItem => item.CST_PHONE_A) %></td>
                            </tr>
                        <% } %>
                          
                        </tbody>
                </table>
            
              </div>
              <div class="panel-footer">
                <div class="row">
                  <div class="col col-xs-4">Page 1 of 5
                  </div>
                  <div class="col col-xs-8">
                        <%:Html.PagedListPager(Model, page => Url.Action("admin_crm", new { currentFilter = ViewBag.CurrentFilter, page }))%>
                       
                  </div>
                </div>
              </div>
            </div>

</div>


</asp:Content>


