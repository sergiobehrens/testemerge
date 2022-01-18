<!--#include file="functions.asp" -->
<html>
<head>
<title>Museu do Brinquedo Popular OIIII</title>
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

    <table align='center' style='background-color: #ffffff; width: 930px;height: 600px; padding: 30px;'>
        <tr><td valign="top" style='padding-top: 20px; padding-left: 20px;'>
        

            <%
            strSQL = "select * from autores where id_autor = " & request("id")
            set rs = MyConn.Execute(strSQL)
            

                saida = ""
                saida = saida & "<div style='width: 900px;'>"
                saida = saida & "   <div style='width: 190px; height: 190px; padding: 3px;float: left;margin-right: 15px;text-align:center;vertical-align: middle;display: table-cell'>"
                saida = saida & "   <a href='imagens/autores/" & rs("foto_autor") & "' rel='lightbox[mostruario]' title='" & rs("nome_autor") & "'>"
                saida = saida & "       <img src='imagens/autores/mini/" & rs("foto_autor") & "' border='0' />"
                saida = saida & "   </a>"
                saida = saida & "       <span style='font-size: 16pt;'>" & rs("nome_autor") & "</span><br /><span style='font-size: 14pt;'>" & rs("cid_autor") & "-" & rs("est_autor") & "</span>"
                saida = saida & "       <br /><br /><a href='artistainfo.asp?id="&rs("id_autor")&"' alt='Informações sobre "&rs("nome_autor")&"' target='_self'><img src='imagens/biografia.png' border='0' /></a>"
                saida = saida & "   </div>"
                saida = saida & "   <div style='width: 650px; float: right;'>"
                
                saida = saida & "       <div style='width: 650px; float: right;text-align:right;'>"
                Set FSO = Server.CreateObject("Scripting.FileSystemObject")
                'Set principal = FSO.GetFolder("c:\inetpub\wwwroot\brinquedosmoramsonhos\imagens\autores\"& rs("nome_autor"))
                Set principal = FSO.GetFolder("E:\Inetpub\vhosts\museudobrinquedopopular.com.br\httpdocs\imagens\autores\"& rs("nome_autor"))
                Set arquivos = principal.Files
                
                For each arq in arquivos
                    nomeArquivo1 = Replace(arq.name, " ", "%20")
                    nomeArquivo2 = Left(Right(arq.name, len(arq.name) - 5), len(arq.name) - 9)
                    saida = saida & "<div style='background-color: #ffffff; border: 1px solid #dfdfdf; width: 190px; height: 190px; padding: 3px;float: left;margin-right: 15px;text-align:center;vertical-align: middle;display: table-cell'><a href='imagens/autores/"&rs("nome_autor")&"/"&nomeArquivo1&"' rel='lightbox[mostruario]' title='"&nomeArquivo2&"'><img src='imagens/autores/"&rs("nome_autor")&"/JPEG/"&nomeArquivo1&"' title='"&nomeArquivo2&"' border='0' /></a></div>"
                    'response.write arq.name
                next
                saida = saida & "       </div>"
                
                saida = saida & "   </div>"
                saida = saida & "</div>"
                
                response.Write(saida)


            %>


        </td></tr>
    </table>
    
 
<!--#include file="rodape.asp" -->

</td></tr>
</table>
</body>
</html>
