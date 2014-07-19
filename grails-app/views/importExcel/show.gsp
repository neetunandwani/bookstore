<%@ page import="com.testapp.ImportExcel" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'importExcel.label', default: 'ImportExcel')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-importExcel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-importExcel" class="content scaffold-show" role="main">
<h1><g:message code="default.show.label" args="[entityName]"/></h1>
<g:if test="${flash.message}">
    <div class="message" role="status">${flash.message}</div>
</g:if>
<ol class="property-list importExcel">

<g:if test="${importExcelInstance?.epost}">
    <li class="fieldcontain">
        <span id="epost-label" class="property-label"><g:message code="importExcel.epost.label" default="Epost"/></span>

        <span class="property-value" aria-labelledby="epost-label"><g:fieldValue bean="${importExcelInstance}" field="epost"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.punktID}">
    <li class="fieldcontain">
        <span id="punktID-label" class="property-label"><g:message code="importExcel.punktID.label" default="Punkt ID"/></span>

        <span class="property-value" aria-labelledby="punktID-label"><g:fieldValue bean="${importExcelInstance}" field="punktID"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.adressTillFastighetsägare}">
    <li class="fieldcontain">
        <span id="adressTillFastighetsägare-label" class="property-label"><g:message code="importExcel.adressTillFastighetsägare.label"
                                                                                     default="Adress Till Fastighetsägare"/></span>

        <span class="property-value" aria-labelledby="adressTillFastighetsägare-label"><g:fieldValue bean="${importExcelInstance}" field="adressTillFastighetsägare"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.beställd}">
    <li class="fieldcontain">
        <span id="beställd-label" class="property-label"><g:message code="importExcel.beställd.label" default="Beställd"/></span>

        <span class="property-value" aria-labelledby="beställd-label"><g:fieldValue bean="${importExcelInstance}" field="beställd"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.beställdAv}">
    <li class="fieldcontain">
        <span id="beställdAv-label" class="property-label"><g:message code="importExcel.beställdAv.label" default="Beställd Av"/></span>

        <span class="property-value" aria-labelledby="beställdAv-label"><g:fieldValue bean="${importExcelInstance}" field="beställdAv"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.beteckning}">
    <li class="fieldcontain">
        <span id="beteckning-label" class="property-label"><g:message code="importExcel.beteckning.label" default="Beteckning"/></span>

        <span class="property-value" aria-labelledby="beteckning-label"><g:fieldValue bean="${importExcelInstance}" field="beteckning"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.brev1PrognosKvartal}">
    <li class="fieldcontain">
        <span id="brev1PrognosKvartal-label" class="property-label"><g:message code="importExcel.brev1PrognosKvartal.label" default="Brev1 Prognos Kvartal"/></span>

        <span class="property-value" aria-labelledby="brev1PrognosKvartal-label"><g:fieldValue bean="${importExcelInstance}" field="brev1PrognosKvartal"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.brev2PrognosMånad}">
    <li class="fieldcontain">
        <span id="brev2PrognosMånad-label" class="property-label"><g:message code="importExcel.brev2PrognosMånad.label" default="Brev2 Prognos Månad"/></span>

        <span class="property-value" aria-labelledby="brev2PrognosMånad-label"><g:fieldValue bean="${importExcelInstance}" field="brev2PrognosMånad"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.datumSlutkundsavtal}">
    <li class="fieldcontain">
        <span id="datumSlutkundsavtal-label" class="property-label"><g:message code="importExcel.datumSlutkundsavtal.label" default="Datum Slutkundsavtal"/></span>

        <span class="property-value" aria-labelledby="datumSlutkundsavtal-label"><g:fieldValue bean="${importExcelInstance}" field="datumSlutkundsavtal"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.ePost}">
    <li class="fieldcontain">
        <span id="ePost-label" class="property-label"><g:message code="importExcel.ePost.label" default="EP ost"/></span>

        <span class="property-value" aria-labelledby="ePost-label"><g:fieldValue bean="${importExcelInstance}" field="ePost"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.efternamnFastighet}">
    <li class="fieldcontain">
        <span id="efternamnFastighet-label" class="property-label"><g:message code="importExcel.efternamnFastighet.label" default="Efternamn Fastighet"/></span>

        <span class="property-value" aria-labelledby="efternamnFastighet-label"><g:fieldValue bean="${importExcelInstance}" field="efternamnFastighet"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.entreprenör}">
    <li class="fieldcontain">
        <span id="entreprenör-label" class="property-label"><g:message code="importExcel.entreprenör.label" default="Entreprenör"/></span>

        <span class="property-value" aria-labelledby="entreprenör-label"><g:fieldValue bean="${importExcelInstance}" field="entreprenör"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.förnamnFastighet}">
    <li class="fieldcontain">
        <span id="förnamnFastighet-label" class="property-label"><g:message code="importExcel.förnamnFastighet.label" default="Förnamn Fastighet"/></span>

        <span class="property-value" aria-labelledby="förnamnFastighet-label"><g:fieldValue bean="${importExcelInstance}" field="förnamnFastighet"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.fakturerad}">
    <li class="fieldcontain">
        <span id="fakturerad-label" class="property-label"><g:message code="importExcel.fakturerad.label" default="Fakturerad"/></span>

        <span class="property-value" aria-labelledby="fakturerad-label"><g:fieldValue bean="${importExcelInstance}" field="fakturerad"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.faktureringsadress}">
    <li class="fieldcontain">
        <span id="faktureringsadress-label" class="property-label"><g:message code="importExcel.faktureringsadress.label" default="Faktureringsadress"/></span>

        <span class="property-value" aria-labelledby="faktureringsadress-label"><g:fieldValue bean="${importExcelInstance}" field="faktureringsadress"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.fastInomhusKlartDatum}">
    <li class="fieldcontain">
        <span id="fastInomhusKlartDatum-label" class="property-label"><g:message code="importExcel.fastInomhusKlartDatum.label" default="Fast Inomhus Klart Datum"/></span>

        <span class="property-value" aria-labelledby="fastInomhusKlartDatum-label"><g:fieldValue bean="${importExcelInstance}" field="fastInomhusKlartDatum"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.fastInomhusLevProg}">
    <li class="fieldcontain">
        <span id="fastInomhusLevProg-label" class="property-label"><g:message code="importExcel.fastInomhusLevProg.label" default="Fast Inomhus Lev Prog"/></span>

        <span class="property-value" aria-labelledby="fastInomhusLevProg-label"><g:fieldValue bean="${importExcelInstance}" field="fastInomhusLevProg"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.fastighet}">
    <li class="fieldcontain">
        <span id="fastighet-label" class="property-label"><g:message code="importExcel.fastighet.label" default="Fastighet"/></span>

        <span class="property-value" aria-labelledby="fastighet-label"><g:fieldValue bean="${importExcelInstance}" field="fastighet"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.finansiering}">
    <li class="fieldcontain">
        <span id="finansiering-label" class="property-label"><g:message code="importExcel.finansiering.label" default="Finansiering"/></span>

        <span class="property-value" aria-labelledby="finansiering-label"><g:fieldValue bean="${importExcelInstance}" field="finansiering"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.fmo}">
    <li class="fieldcontain">
        <span id="fmo-label" class="property-label"><g:message code="importExcel.fmo.label" default="Fmo"/></span>

        <span class="property-value" aria-labelledby="fmo-label"><g:fieldValue bean="${importExcelInstance}" field="fmo"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.gatuadress}">
    <li class="fieldcontain">
        <span id="gatuadress-label" class="property-label"><g:message code="importExcel.gatuadress.label" default="Gatuadress"/></span>

        <span class="property-value" aria-labelledby="gatuadress-label"><g:fieldValue bean="${importExcelInstance}" field="gatuadress"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.gatunr}">
    <li class="fieldcontain">
        <span id="gatunr-label" class="property-label"><g:message code="importExcel.gatunr.label" default="Gatunr"/></span>

        <span class="property-value" aria-labelledby="gatunr-label"><g:fieldValue bean="${importExcelInstance}" field="gatunr"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.hemnr}">
    <li class="fieldcontain">
        <span id="hemnr-label" class="property-label"><g:message code="importExcel.hemnr.label" default="Hemnr"/></span>

        <span class="property-value" aria-labelledby="hemnr-label"><g:fieldValue bean="${importExcelInstance}" field="hemnr"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.kontaktEntreprenör}">
    <li class="fieldcontain">
        <span id="kontaktEntreprenör-label" class="property-label"><g:message code="importExcel.kontaktEntreprenör.label" default="Kontakt Entreprenör"/></span>

        <span class="property-value" aria-labelledby="kontaktEntreprenör-label"><g:fieldValue bean="${importExcelInstance}" field="kontaktEntreprenör"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.miljöTeknikskåp}">
    <li class="fieldcontain">
        <span id="miljöTeknikskåp-label" class="property-label"><g:message code="importExcel.miljöTeknikskåp.label" default="Miljö Teknikskåp"/></span>

        <span class="property-value" aria-labelledby="miljöTeknikskåp-label"><g:fieldValue bean="${importExcelInstance}" field="miljöTeknikskåp"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.mobilnr}">
    <li class="fieldcontain">
        <span id="mobilnr-label" class="property-label"><g:message code="importExcel.mobilnr.label" default="Mobilnr"/></span>

        <span class="property-value" aria-labelledby="mobilnr-label"><g:fieldValue bean="${importExcelInstance}" field="mobilnr"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.mobilnr1}">
    <li class="fieldcontain">
        <span id="mobilnr1-label" class="property-label"><g:message code="importExcel.mobilnr1.label" default="Mobilnr1"/></span>

        <span class="property-value" aria-labelledby="mobilnr1-label"><g:fieldValue bean="${importExcelInstance}" field="mobilnr1"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.noteringarEntreprenör}">
    <li class="fieldcontain">
        <span id="noteringarEntreprenör-label" class="property-label"><g:message code="importExcel.noteringarEntreprenör.label" default="Noteringar Entreprenör"/></span>

        <span class="property-value" aria-labelledby="noteringarEntreprenör-label"><g:fieldValue bean="${importExcelInstance}" field="noteringarEntreprenör"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.noteringarOperatör}">
    <li class="fieldcontain">
        <span id="noteringarOperatör-label" class="property-label"><g:message code="importExcel.noteringarOperatör.label" default="Noteringar Operatör"/></span>

        <span class="property-value" aria-labelledby="noteringarOperatör-label"><g:fieldValue bean="${importExcelInstance}" field="noteringarOperatör"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.objekt}">
    <li class="fieldcontain">
        <span id="objekt-label" class="property-label"><g:message code="importExcel.objekt.label" default="Objekt"/></span>

        <span class="property-value" aria-labelledby="objekt-label"><g:fieldValue bean="${importExcelInstance}" field="objekt"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.odfStationssida}">
    <li class="fieldcontain">
        <span id="odfStationssida-label" class="property-label"><g:message code="importExcel.odfStationssida.label" default="Odf Stationssida"/></span>

        <span class="property-value" aria-labelledby="odfStationssida-label"><g:fieldValue bean="${importExcelInstance}" field="odfStationssida"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.område}">
    <li class="fieldcontain">
        <span id="område-label" class="property-label"><g:message code="importExcel.område.label" default="Område"/></span>

        <span class="property-value" aria-labelledby="område-label"><g:fieldValue bean="${importExcelInstance}" field="område"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.orderlagdINA}">
    <li class="fieldcontain">
        <span id="orderlagdINA-label" class="property-label"><g:message code="importExcel.orderlagdINA.label" default="Orderlagd INA"/></span>

        <span class="property-value" aria-labelledby="orderlagdINA-label"><g:fieldValue bean="${importExcelInstance}" field="orderlagdINA"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.personnr}">
    <li class="fieldcontain">
        <span id="personnr-label" class="property-label"><g:message code="importExcel.personnr.label" default="Personnr"/></span>

        <span class="property-value" aria-labelledby="personnr-label"><g:fieldValue bean="${importExcelInstance}" field="personnr"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.portISwitch}">
    <li class="fieldcontain">
        <span id="portISwitch-label" class="property-label"><g:message code="importExcel.portISwitch.label" default="Port IS witch"/></span>

        <span class="property-value" aria-labelledby="portISwitch-label"><g:fieldValue bean="${importExcelInstance}" field="portISwitch"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.postnr}">
    <li class="fieldcontain">
        <span id="postnr-label" class="property-label"><g:message code="importExcel.postnr.label" default="Postnr"/></span>

        <span class="property-value" aria-labelledby="postnr-label"><g:fieldValue bean="${importExcelInstance}" field="postnr"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.postort}">
    <li class="fieldcontain">
        <span id="postort-label" class="property-label"><g:message code="importExcel.postort.label" default="Postort"/></span>

        <span class="property-value" aria-labelledby="postort-label"><g:fieldValue bean="${importExcelInstance}" field="postort"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.pris}">
    <li class="fieldcontain">
        <span id="pris-label" class="property-label"><g:message code="importExcel.pris.label" default="Pris"/></span>

        <span class="property-value" aria-labelledby="pris-label"><g:fieldValue bean="${importExcelInstance}" field="pris"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.säljkampanj}">
    <li class="fieldcontain">
        <span id="säljkampanj-label" class="property-label"><g:message code="importExcel.säljkampanj.label" default="Säljkampanj"/></span>

        <span class="property-value" aria-labelledby="säljkampanj-label"><g:fieldValue bean="${importExcelInstance}" field="säljkampanj"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.samfällighet}">
    <li class="fieldcontain">
        <span id="samfällighet-label" class="property-label"><g:message code="importExcel.samfällighet.label" default="Samfällighet"/></span>

        <span class="property-value" aria-labelledby="samfällighet-label"><g:fieldValue bean="${importExcelInstance}" field="samfällighet"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.sdu}">
    <li class="fieldcontain">
        <span id="sdu-label" class="property-label"><g:message code="importExcel.sdu.label" default="Sdu"/></span>

        <span class="property-value" aria-labelledby="sdu-label"><g:fieldValue bean="${importExcelInstance}" field="sdu"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.stnKc}">
    <li class="fieldcontain">
        <span id="stnKc-label" class="property-label"><g:message code="importExcel.stnKc.label" default="Stn Kc"/></span>

        <span class="property-value" aria-labelledby="stnKc-label"><g:fieldValue bean="${importExcelInstance}" field="stnKc"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.switchnamn}">
    <li class="fieldcontain">
        <span id="switchnamn-label" class="property-label"><g:message code="importExcel.switchnamn.label" default="Switchnamn"/></span>

        <span class="property-value" aria-labelledby="switchnamn-label"><g:fieldValue bean="${importExcelInstance}" field="switchnamn"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.typ}">
    <li class="fieldcontain">
        <span id="typ-label" class="property-label"><g:message code="importExcel.typ.label" default="Typ"/></span>

        <span class="property-value" aria-labelledby="typ-label"><g:fieldValue bean="${importExcelInstance}" field="typ"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.uppföljningssamtal}">
    <li class="fieldcontain">
        <span id="uppföljningssamtal-label" class="property-label"><g:message code="importExcel.uppföljningssamtal.label" default="Uppföljningssamtal"/></span>

        <span class="property-value" aria-labelledby="uppföljningssamtal-label"><g:fieldValue bean="${importExcelInstance}" field="uppföljningssamtal"/></span>

    </li>
</g:if>

<g:if test="${importExcelInstance?.uttagFörNPS}">
    <li class="fieldcontain">
        <span id="uttagFörNPS-label" class="property-label"><g:message code="importExcel.uttagFörNPS.label" default="Uttag För NPS"/></span>

        <span class="property-value" aria-labelledby="uttagFörNPS-label"><g:fieldValue bean="${importExcelInstance}" field="uttagFörNPS"/></span>

    </li>
</g:if>

</ol>
<g:form>
    <fieldset class="buttons">
        <g:hiddenField name="id" value="${importExcelInstance?.id}"/>
        <g:link class="edit" action="edit" id="${importExcelInstance?.id}"><g:message code="default.button.edit.label" default="Edit"/></g:link>
        <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                        onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
    </fieldset>
</g:form>
</div>
</body>
</html>
