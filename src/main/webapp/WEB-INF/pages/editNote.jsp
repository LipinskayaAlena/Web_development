<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit</title>
  <link rel="stylesheet" href="../../resources/css/styleCalend.css">
  <link rel="stylesheet" href="../../resources/css/style.css">
  <link href="../../resources/css/menuStyle.css" rel="stylesheet"/>
  <link rel="icon" href="../../resources/images/sign.png" type="image/x-icon" />
  <link rel="stylesheet" href="../../resources/css/styleList.css">
  <link rel="stylesheet" href="../../resources/css/styleControlNote.css"/>

  <link rel='stylesheet' href='webjars/bootstrap/3.3.5/css/bootstrap.min.css' type='text/css' media='all'>

  <script src="webjars/jquery/2.1.4/jquery.min.js"></script>
  <script src="webjars/jquery-validation/1.14.0/jquery.validate.min.js"></script>
  <script src="webjars/jquery-validation/1.14.0/jquery.validate.js"></script>
  <script src="webjars/jquery-validation/1.14.0/additional-methods.min.js"></script>
  <script src="webjars/jquery-validation/1.14.0/additional-methods.js"></script>
  <script src="webjars/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body style="background: #dad8c0">
<table>
  <tr>
    <ul id="menu">
      <li style="margin-left: 10px;"><img src="../../resources/images/signMenu.png" style="width: 35px; height: 31px"></li>
      <li class="styleText">${user.username}</li>
      <li><a href="<c:url value="/month"/>">Home</a></li>
      <li><a href="<c:url value="/all_notes"/>">All events</a></li>
      <li><a href="<c:url value="/j_spring_security_logout"/>">Exit</a></li>
    </ul>
  </tr>
</table>

<div class="b-popup" id="popup1">
  <div class="b-popup-content">
    <a style="margin-left: 220px" href="<c:url value="/all_notes"/>">X</a>
    <form id="editNoteForm" class="form-horizontal"
          data-fv-framework="bootstrap"
          data-fv-icon-valid="glyphicon glyphicon-ok"
          data-fv-icon-invalid="glyphicon glyphicon-remove"
          data-fv-icon-validating="glyphicon glyphicon-refresh" method="post" action="<c:url value="/note/${note.note_id}/edit"/>">
      <input type="text" name="note_id" value="${note.note_id}" hidden>
      <div class="form-group">
        <div class="col-xs-4">
          <label for="note_txt">Note</label>
          <textarea id="note_txt" style="width: 160px; resize: none"  rows="5" name="note_text" placeholder="Максимум 512 символов">${note.note_text}</textarea>
        </div>
      </div>

      <div class="form-group" style="margin-top: 10px">
        <div class="col-xs-4">
          <label for="date" class="col-xs-3 control-label">Date</label>
          <input type="text" pattern="(?:19|20)[0-9]{2}-(?:(?:0[1-9]|1[0-2])-(?:0[1-9]|1[0-9]|2[0-9])|(?:(?!02)(?:0[1-9]|1[0-2])-(?:30))|(?:(?:0[13578]|1[02])-31))" class="form-control" id="date" value="${note.note_date}" style="width: 159px" name="note_date" placeholder="YYYY/MM/DD"
                 data-fv-date="true"
                 data-fv-date-format="YYYY-MM-DD"
                 data-fv-date-message="The value is not a valid date" />
        </div>
      </div>
      <button type="submit" style="margin-left: 70px; margin-top: 10px" class="button">Update</button>
    </form>

  </div>
</div>

</body>
</html>
