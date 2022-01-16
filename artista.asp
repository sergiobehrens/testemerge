<!--#include file="functions.asp" -->
<html>
<head>
<title>Museu do Brinquedo Popular PÁGINA ARTISTA</title>
<meta name="author" content="David Glat - davidglat@uol.com.br" />
<meta name="copyright" content="Todos os Direitos Reservados a David Glat" />
<meta name="description" content="Brinquedos que moram nos Sonhos" />
<meta name="keywords" content="brinquedos, diversão, sonhos, David Glat, popular" />
<meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="content-language" content="pt-br" />
<meta http-equiv="pragma" content="no-cache" />
<meta name="revisit-after" content="2 days" />
<meta name="robots" content="index,follow" />
<meta name="rating" content="general" />
<link href='css/estilo.css' rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/style.css" type="text/css" media="screen, projection"/>
<!--[if lte IE 7]>
    <link rel="stylesheet" type="text/css" href="css/ie.css" media="screen" />
<![endif]-->
<link href='css/lightbox.css' rel='stylesheet' type='text/css' />
<script language="javascript" type="text/javascript" src="js/jquery-1.7.2.min.js"></script>
<script language="javascript" type="text/javascript" src="js/lightbox.js"></script>
<script type="text/javascript" language="javascript" src="js/jquery.dropdownPlain.js"></script>
<script language="javascript" type="text/javascript">
    function mostraDiv(iddiv){
        $(iddiv).slideToggle('slow');
    }
</script>
</head>
<body>

<!--#include file="superior.asp" -->

<table width="100%">
<tr><td align="center">

    <table align='center' style='background-color: #ffffff; width: 960px;height: 600px; padding: 30px;'>
        <tr><td>
        

            <%
            strSQL = "select * from autores"
            set rs = MyConn.Execute(strSQL)
            
            while not rs.EOF
                saida = ""
                saida = saida & "<div style='width: 430px;height: 190px;float: left;margin-top: 5px;'>"
                saida = saida & "   <div style='width: 190px; border: 1px solid #dfdfdf; height: 190px; padding: 3px;background-color: white;float: left;text-align:center;vertical-align: middle;display: table-cell; margin-right: 10px;'>"
                saida = saida & "   <a href='imagens/autores/" & rs("foto_autor") & "' rel='lightbox' title='" & rs("nome_autor") & "' style='vertical-align: middle;'>"
                saida = saida & "       <img src='imagens/autores/mini/" & rs("foto_autor") & "' border='0' style='vertical-align: middle;' />"
                saida = saida & "   </a>"
                saida = saida & "   </div>"
                saida = saida & "   <div>"
                saida = saida & "       <span style='font-size: 16pt;'>" & rs("nome_autor") & "</span><br />" & rs("cid_autor") & "-" & rs("est_autor") & "<br /><br />"
                if rs("bib_autor") <> "" then
                saida = saida & "       <a href='artistainfo.asp?id="&rs("id_autor")&"' alt='Informações sobre "&rs("nome_autor")&"' target='_self'><img src='imagens/biografia.png' border='0' /></a>"
                end if
                saida = saida & "   </div>"
                saida = saida & "   <div>"
                saida = saida & "       <a href='artistafoto.asp?id="&rs("id_autor")&"' alt='Fotos de "&rs("nome_autor")&"' target='_self'><img src='imagens/fotos.png' border='0' /></a>"
                saida = saida & "   </div>"
                saida = saida & "</div>"
                
                response.Write(saida)
                rs.MoveNext
            
            wend
            %>


        </td></tr>
    </table>
    
 
<!--#include file="rodape.asp" -->

</td></tr>
</table>
</body>
</html>
