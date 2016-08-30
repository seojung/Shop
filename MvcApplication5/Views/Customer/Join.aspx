<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<MvcApplication5.CUSTOMER>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 <script>
     var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;


        $(document).ready(function () {
            $('#CST_ID').addClass('form-control');
            $('#CST_PWD').addClass("form-control");
            $('#CST_NAME').addClass("form-control");
            $('#CST_EMAIL').addClass("form-control");

            $('#CST_ID').attr("placeholder", "아이디");
            $('#CST_PWD').attr("placeholder", "비밀번호");
            $('#CST_NAME').attr("placeholder", "사용자 이름");
            $('#CST_EMAIL').attr("placeholder", "이메일 주소");

        });
</script>

    <% using (Html.BeginForm()) { %>
        <%: Html.ValidationSummary(true) %>
    <fieldset>
      <article class="container">
        <div class="page-header">
          <h1>회원가입 <small>basic form</small></h1>
        </div>
        <div class="col-md-6 col-md-offset-3">
             <div class="form-group">
              <label for="InputId">아이디</label>
              <%: Html.EditorFor(model => model.CST_ID )%>
           
            </div>
            <div class="form-group">
              <label for="InputPassword1">비밀번호</label>
              <%: Html.EditorFor(model => model.CST_PWD )%>
              <input type="password" class="form-control" id="InputPassword1" placeholder="비밀번호">
            </div>
            <div class="form-group">
              <label for="InputPassword2">비밀번호 확인</label>
              <input type="password" class="form-control" id="InputPassword2" placeholder="비밀번호 확인">
              <p class="help-block">비밀번호 확인을 위해 다시한번 입력 해 주세요</p>
            </div>
            <div class="form-group">
              <label for="username">이름</label>
               <%: Html.EditorFor(model => model.CST_NAME )%>
            </div>
            <div class="form-group">
              <label for="InputEmail">이메일 주소</label>
               <%: Html.EditorFor(model => model.CST_EMAIL )%>
            </div>
            <div class="form-group">
              <label for="username">휴대폰 인증</label>
              <div class="input-group">

                <input type="tel" class="form-control" id="Tel1" placeholder="- 없이 입력해 주세요">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 전송<i class="fa fa-mail-forward spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
              <label for="username">인증번호 입력</label>
              <div class="input-group">
                <input type="text" class="form-control" id="Text1" placeholder="인증번호">
                <span class="input-group-btn">
                  <button class="btn btn-success">인증번호 입력<i class="fa fa-edit spaceLeft"></i></button>
                </span>
              </div>
            </div>
            <div class="form-group">
                <label>약관 동의</label>
              <div data-toggle="buttons">
              <label class="btn btn-primary active">
                  <span class="fa fa-check"></span>
                  <input id="agree" type="checkbox" autocomplete="off" checked>
              </label>
              <a href="#">이용약관</a>에 동의합니다.
              </div>
            </div>
            <div class="form-group text-center">
              <button type="submit" class="btn btn-info"value="Joinus">회원가입<i class="fa fa-check spaceLeft"></i></button>
              <button type="submit" class="btn btn-warning">가입취소<i class="fa fa-times spaceLeft"></i></button>
            </div>
        </div>

       
      </article>
     </fieldset>
    <% } %>
</asp:Content>
