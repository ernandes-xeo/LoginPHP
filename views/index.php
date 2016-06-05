<?php
require_once '../models/login.php';

if (!isset($_SESSION)) {
    session_start();
}

$login = new Login();

if ($login->verificaLogin()) {
    $logado = $_SESSION['usuario'];
} else {
   $login->sair();
   header("location:../controllers/loginController.php?botao=sair");
}
?>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <title>Layout</title>
        <meta name="author" content="Prof.: Xeo" >
        <meta name="Description" content="Layout padrão página html" >
        <link rel="stylesheet" type="text/css" href="../skin/css/style.css">
    </head>
    <body>
        <?php
        // include de aquivos para a formação da página
        include_once "header.php";
        include_once "nav.php";


        @$opcao = $_REQUEST['op'];

        switch ($opcao) {
            case 'servicos':
                include_once 'servicos.php';
                break;
            case 'clientes':
                include_once 'clientes.php';
                break;
            case 'produtos':
                include_once 'produtos.php';
                break;
            case 'ajuda':
                include_once 'ajuda.php';
                break;
            default:
                include_once "content.php";
        }

        include_once "footer.php";
        ?>
    </body>
</html>