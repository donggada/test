<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>이름_인터페이스구현_실기시험_파일_test1.html</title>
</head>
<body>
<h3>1번)가입버튼 클릭시 *표시는 반드시 입력하도록 체크하세요</h3>
<h3>2번)중복확인버튼 클릭시 id중복체크 하세요</h3>

<form action="a.jsp" method="post" name="fr" id="fr" > 
<table>
<tr>
<th colspan="4">*표시는 반드시 입력하도록 체크하세요
</th>
</tr>

<tr>
<th>*이름</th>
<td colspan="3"><input type="text" name="name" id="name"></td>
</tr>

<tr>
<th>*회원 ID</th>
<td><input type="text" name="id" id="id"></td>
<td colspan="2"><input type="button" value="중복확인" id="ibtn"></td>
<td><div>중복확인 해주세요</div></td>
</tr>
 
<tr>
<th>*비밀번호</th>
<td colspan="3"><input type="password" name="pass" id="pass"></td> 
</tr>

<tr>
<th>*성별</th>
<td  colspan="3"><input type="radio" name="gender" id="man" value="남">남
<input type="radio" name="gender" id="woman" value="여">여</td>
</tr>

<tr>
<th>*E-mail</th>
<td colspan="3"><input type="text" name="email" id="email"></td> 
</tr>

<tr>
<th>*전화번호</th>
<td colspan="3"><input type="text" name="phone" id="phone"></td> 
</tr>
<tr>
<th>*회원분류</th>
<td  colspan="3"><select name="sel" id="sel">
<option value="">선택해주십시오</option>
<option value="브론즈">브론즈</option>
<option value="실버">실버</option>
<option value="골드">골드</option>
</select></td>
</tr>

<tr>
<th></th>
<td  colspan="3"><input type="submit" value="가입" id="sbtn">
<input type="reset" value="취소" id="rbtn"></td>
</tr>

</table>
</form>
</body>
</html>