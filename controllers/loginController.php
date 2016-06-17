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

// Instancia classe Login
$login = new Login();
$usuario = new Usuario();
switch ($botao) {
    case 'Entrar':
        // verificação se o login nao está vazio
        if (!empty($_POST['user'])) {
            $usuario->setNome($_POST['user']);
        }
        // verifica se a senha nao está vazia
        if (!empty($_POST['senha']))
            $usuario->setSenha(md5($_POST['senha']));

            

        if (!$login->verificaLogin() && $login->logar($usuario)) {
            $_SESSION['usuario'] = $usuario->getNome();
            $url = 'location: ../views/index.php';
            header($url);
        } else {
             $_SESSION['erro'] = 'Usuário ou senha inválidos. Por favor tente novamente!';
            $url = 'location:../login.php';
            header($url);
        }

        break;
    case 'exibir':
        
       // echo "Receber paramento do cliente para consultar no banco de dados";
        $id = $_REQUEST['id'];
        $usuario->setId($id);
        $res = $login->localizar($usuario);
        $_SESSION['dadosUser'] = $res;
        header('location: ../views/index.php?op=userview');
        break;
    
    case 'editar':
        var_dump($_REQUEST);
        echo "Lógica para Editar";
        
        break;
     case 'excluir':
         var_dump($_REQUEST);
        echo "Lógica para Excluir";
        
        break;
    case 'cadastrar':
        var_dump($_REQUEST);
        header("location: ../views/index.php?op=cadastrar");
    break;

    case 'Salvar':
        var_dump($_REQUEST);        
        echo "Lógica para cadastrar aqui";
    break;

    case 'sair':
        if ($login->sair())
            $url = 'location:../login.php';
        header($url);
        break;
    default:
        $login->sair();
        $_SESSION['erro'] = 'Você não tem permissão de acesso.';
        $url = 'location:../index.php';
        header($url);
        break;
}
