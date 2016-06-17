<?php
class Usuario {
    /* atributos do usuário */

    private $id;
    private $nome;
    private $usuario;
    private $email;
    private $senha;

    /* get and sets */

    function getId() {
        return $this->id;
    }

    function getNome() {
        return $this->nome;
    }

    function getUsuario() {
        return $this->usuario;
    }

    function getEmail() {
        return $this->email;
    }

    function getSenha() {
        return $this->senha;
    }

    function setId($id) {
        $this->id = $id;
    }

    function setNome($nome) {
        $this->nome = $nome;
    }

    function setUsuario($usuario) {
        $this->usuario = $usuario;
    }

    function setEmail($email) {
        $this->email = $email;
    }

    function setSenha($senha) {
        $this->senha = $senha;
    }
    
    
    public function localizar(Usuario $user) {
        $usuarioDao = new UsuarioDao();
        if ($usuario = $usuarioDao->localizar($user)){
            return $usuario;
        }else {
            return null;
        }
    }

    function __construct() {
        
    }

}