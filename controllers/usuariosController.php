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
        $editarUser = new Usuario();
        $editarUser->setId($_POST['id']);
        $editarUser->setUsuario($_POST['user']);
        $editarUser->setNome($_POST['nome']);
        $editarUser->setEmail($_POST['email']);
        
        if(!empty($_POST['senha']))
            $editarUser->setSenha($_POST['senha']);
        else{
            $editarUser->setSenha(null);
        }
        
        /* Instancia da classe */
        $userDao = new UsuarioDao($editarUser);
        
        if($userDao->alterar($editarUser)){
            header('location: ../views/index.php?op=userview&editar=ok');
        }
        
        
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
