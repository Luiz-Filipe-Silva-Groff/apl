<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix = "fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page contentType = "text/html" pageEncoding="iso-8859-1" %>
<jsp:include page="/header.jsp"/>
<jsp:include page="/menu.jsp"/>

<h2>Cidades</h2>
<div class="col-sm">
    <table id="datatable" class="table table-striped table-bordered basic-datatable">
        <thead>
            <tr>
                <th align="left">ID</th>
                <th align="left">Cidade</th>
                <th align="left">Estado</th>
                <th align="right"></th>
                <th align="right"></th>
            </tr>           
        </thead>
        <tbody>
            <c:forEach var="cidade" items="${cidades}">
                <tr>
                    <td align="left">${cidade.idCidade}</td>
                    <td align="left">${cidade.nomeCidade}</td>
                    <td align="left">${cidade.estado.siglaEstado}</td>
                    <td align="center">
                        <a href="${pageContext.request.contextPath}/CidadeExcluir?idCidade=${cidade.idCidade}">
                            <button class="btn btn-group-lg
                                    <c:out value="${cidade.situacao == 'A' ? 'btn-danger': 'btn-success'}"/>">
                                <c:out value="${cidade.situacao == 'A' ? 'Inativar': 'Ativar'}"/>
                            </button>                                    
                        </a>
                    </td>
                    <td align="center">
                        <a href="${pageContext.request.contextPath}/CidadeCarregar?idCidade=${cidade.idCidade}">
                            <button class="btn-success btn"/>Alterar</button>                       
                        </a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>   
</div>
<div align="center">
    <a href="${pageContext.request.contextPath}/CidadeNovo"><button class="btn btn-success"/>Novo</button></a>
    <a href="index.jsp"><button class="btn btn-secondary"/>Voltar à Página Inicial</button></a>
</div>
    <script>
        $(document).ready(function(){
            console.log('entrei ready');
            $('#datatable').DataTable({
                "oLanguege": {
                    "sProcessing": "Processando...",
                    "sLengthMenu": "Mostrar _MENU_registros",
                    "sZeroRecords": "Nenhum registtro encontrado.",
                    "sInfo": "Mostrando de _START_ até _END_ de _TOTAL_ registros",
                    "sInfoEmpty": "Mostrando de 0 até 0 de 0 registros",
                    "sInfoFiltered": "",
                    "sInfoPostFix": "",
                    "sSearch": "Buscar:",
                    "sUrl": "",
                    "oPaginate": {
                        "sFirst": "Primeiro",
                        "sPrevious": "Anterior",
                        "sNext": "Seguinte",
                        "sLast": "Último"
                    }
                }
            });
        });
    </script>
    <%@include file="/footer.jsp" %>