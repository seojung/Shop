<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>


<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> <!-- 부트스트랩 cdn -->

<style>
    
    div .ul.li{
        color :red;
    }


    #failed.ul{ 
    color:red;
font-size: 10px;
 
}
</style>
<script>
    $(document).ready(function () {
     
       
    })

</script>

<div class="admin_login">
    <form action="login" method="post" name="admin"> 
   <div class="form-group">
    <label for="adminid">관리자 아이디</label>
  <input type="text" class="form-control" name="admin_id" placeholder="아이디를 입력하세요">
     
  </div>
    <div class="form-group">
    <label for="exampleInputPassword1"> 관리자 비밀번호 </label>
    <input type="password" class="form-control" name="admin_pw" placeholder="비밀번호를 입력하세요">
  </div>
    <button type="submit" class="btn btn-default">로그인</button>
    </form>
      <%: Html.ValidationSummary(false,"",new {@name = "failed" ,@color = "red" } ) %>



</div> 
