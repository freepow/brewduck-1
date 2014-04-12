<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:forEach items="${list}" var="list">
    <tr >
        <td  class="small-cell v-align-middle">
            <div class="star">
                <input id="checkbox9" type="checkbox" value="1" checked >
                <label for="checkbox9"></label>
            </div>
        </td>
        <td  class="clickable v-align-middle"> ${list.koreanName}</td>
        <td  class="clickable v-align-middle"> ${list.name}</td>
        <td  class="clickable v-align-middle"> ${list.typeKorean}</td>
        <td  class="clickable v-align-middle"> ${list.originKorean}</td>
        <td  class="clickable v-align-middle"> ${list.alpha}</td>
        <td  class="clickable v-align-middle"> ${list.beta}</td>
        <td  class="clickable v-align-middle"> ${list.hsi}</td>
    </tr>
</c:forEach>

