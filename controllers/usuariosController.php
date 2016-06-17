<?php

include_once '../models/login.php';
include_once '../models/usuario.php';
include_once '../models/UsuarioDao.php';

// início de sessão php
if (!isset($_SESSION)) {
    session_start();
}

if ($_REQUEST['botao'])
    $botao = $_REQUEST['botao'];

$usuario = new Usuario();
switch ($botao) {

    case 'exibir':
        // echo "Receber paramento do cliente para consultar no banco de dados";
        var_dump($_REQUEST);
        $id = $_REQUEST['id'];
        $usuario->setId($id);
        $res = $usuario->localizar($usuario);
        $_SESSION['dadosUser'] = $res;
        header('location: ../views/index.php?op=userview');
        break;
    case 'editar':
        var_dump($_REQUEST);
        echo "Lógica para Editar";

        break;
    case 'cadastrar':
        var_dump($_REQUEST);
        header("location: ../views/index.php?op=cadastrar");
        break;

    case 'Salvar':
        var_dump($_REQUEST);
        echo "Lógica para cadastrar aqui";
        break;
    case 'excluir':
        var_dump($_REQUEST);
        echo "Lógica para Excluir";

        break;
    default:
        
        break;
}
