<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication5.Goods>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<h2>detail_goods</h2>


<div class="w3-light-grey w3-padding-64 w3-margin-bottom w3-center">
  <h1 class="w3-jumbo">Weekly Ping</h1>
</div>

<div class="w3-row-padding w3-content" style="max-width:1400px">
  <div class="w3-twothird">
    <img src="<%:Model.url %>" alt="Notebook" style="width:100%">
    <h2>Empty Notebook Found</h2>
    <div class="w3-justify">
      
    </div>
  </div>
  <div class="w3-third">
    <div class="w3-container w3-light-grey">
      <h2>이름 :<%:Model.name%></h2>
        <br/>
      <p class="w3-justify">가격: <%:Model.price %></p>
    </div>
    <br>
    <div class="w3-container w3-light-grey w3-justify">
      <h2>Very New News!</h2>
      <p class="w3-justify">ㅇㅇ</p>
    </div>
    <br>
    <div class="w3-container w3-light-grey w3-justify">
      <h2>Very New News!</h2>
      <p class="w3-justify">ㅇㅇ</p>
    </div>
  </div>
</div>




</asp:Content>

