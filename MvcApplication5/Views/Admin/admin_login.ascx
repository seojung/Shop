<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> <!-- 부트스트랩 cdn -->


<script>
    $(document).ready(function () {
     
       
    })
    function Admin_login() {
        location.href = '/Admin/login';
    }
</script>


<div class="admin_login">
   <div class="form-group">
    <label for="adminid">관리자 아이디</label>
    <input type="email" class="form-control" id="exampleInputEmail1" placeholder="아이디를 입력하세요">
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1">비밀번호 </label>
    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="비밀번호를 입력하세요">
  </div>
    <button type="submit" class="btn btn-default">로그인</button>



</div>