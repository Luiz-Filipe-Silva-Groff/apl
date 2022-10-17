<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix= "fmt" uri = "http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="iso-8859-1" %>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>

<h2>Estados</h2>
<table id="datatable" class="display">
    <thead>
        <tr>
            <th align="left">ID</th>
            <th align="left">Nome</th>
            <th align="left">Sigla</th>
            <th align="left"></th>
            <th align="left"></th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="estado" items="${estados}">
            <tr>
                <td align="left">${estado.idEstado}</td>
                <td align="left">${estado.nomeEstado}</td>
                <td align="left">${estado.siglaEstado}</td>
                <td align="center">
                            <a href=
    "${pageContext.request.contextPath}/EstadoExcluir?idEstado=${estado.idEstado}">
                    <button class="btn btn-danger"/>Excluir</button></a></td>
                    <td align="center">
                        <a href=
    "${pageContext.request.contextPath}/EstadoCarregar?idEstado=${estado.idEstado}">
            <button class="btn btn-success"/>Alterar</button>
                        </a></td>
            </tr>
        </c:forEach>
    </tbody>
    
</table>

<div align="center">
    <a href="${pageContext.request.contextPath}/EstadoNovo"><button class="btn btn-success"/>Novo</button></a>
    <a href="index.jsp"><button class="btn btn-secondary"/>Voltar � P�gina Inicial</button></a>
</div>
    
    <script>
        $(document).ready(function() {
            console.log('entrei ready');
            //Carregamos a datatable
            //$("#datatable").DataTable({});
            $('#datatable').DataTable({
                "oLanguage": {
                    "sProcessing": "Proessando...",
                    "sLengthMenu": "Mostrar _MENU_ registros",
                    "sZeroRecords": "Nenhum registro encontrado.",
                    "sInfo": "Mostrando de _START_ at� _END_ de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando de 0 at� 0 de 0 registros",
                    "sInfoFiltered": "",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "oPaginate": {
                        "sFirst": "Primeiro",
                        "sPrevious": "Anterior",
                        "sNext": "Seguinte",
                        "sLast": "�ltimo"
                    }
                }
            });
        });
    </script>
    
    <%@include file="/footer.jsp" %>