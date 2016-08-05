<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<MvcApplication5.Goods>>"  %>
<script>

</script>
<div class="row">
    <% foreach (var item in Model) { %>
       <div class="col-sm-4" style="margin:10px">
            <div class="panel panel-primary">
                <div class="panel-head"><%: Html.DisplayFor(modelItem => item.name) %></div>
                <div class="panel-body"><img src="<%: Html.DisplayFor(modelItem => item.url)%>"class="img-responsive" style="max-width: 100%;margin-left: auto; margin-right: auto;" alt="Image"></div>
                <div class="panel-footer"><%: Html.DisplayFor(modelItem => item.description) %></div>
                <div class="panel-footer"><%: Html.DisplayFor(modelItem => item.price) %></div>
            </div>
        </div>
    <% } %>
</div>
