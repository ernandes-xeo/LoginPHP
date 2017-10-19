<?php

include_once 'conexao.php';
include_once 'usuario.php';

class UsuarioDao {

    public static $instance;

    public function __construct() {
        
    }

    public static function getInstance() {
        if (!isset(self::$instance))
            self::$instance = new UsuarioDao();

        return self::$instance;
    }

    public function consultarLogin(Usuario $usuario) {
        // Prepara a sql para consulta
        $sql = "SELECT  nome from usuario where usuario = ? and senha = ?";
        $rs = Conexao::getInstance()->prepare($sql);
        $rs->bindValue(1, $usuario->getNome());
        $rs->bindValue(2, $usuario->getSenha());

        $rs->execute();
        if ($rs->rowCount() == 1):
            $dados = $rs->fetch(PDO::FETCH_OBJ);
            $_SESSION['usuario'] = $dados->usuario;
            $_SESSION['nome'] = $dados->nome;
            $_SESSION['logado'] = true;
            return true;
        else:
            return false;
        endif;
    }

    public function localizar(Usuario $user) {

        // metodo preparament 
        $sql = "SELECT * FROM usuario  where id = :id";
        $rs = Conexao::getInstance()->prepare($sql);
        
        $rs->bindValue(":id", $user->getId());

        if ($rs->execute()) {
            if ($rs->rowCount() > 0) {
                while ($row = $rs->fetch(PDO::FETCH_OBJ)) {
                    $usario = new Usuario();
                    $usario->setId($row->id);
                    $usario->setNome($row->nome);
                    $usario->setEmail($row->mail);
                    $usario->setUsuario($row->usuario);
                }
                return $usario;
            }else{
                return false;
            }
        }
    }

    public function inserir($param) {
        
    }

    public function alterar($param) {
        
    }

    public function excluir($param) {
        
    }

    public function listar() {
        try {
            $sql = "SELECT * FROM usuario order by nome";

            $result = Conexao::getInstance()->query($sql);

            $lista = array();
            $i = 0;
            while ($row = $result->fetch(PDO::FETCH_OBJ)) {
                $usario = new Usuario();
                $usario->setId($row->id);
                $usario->setNome($row->nome);
                $usario->setEmail($row->mail);
                $usario->setUsuario($row->usuario);
                $lista[$i] = $usario;
                $i++;
            }
            return $lista;
        } catch (Exception $e) {
            print "Ocorreu um erro ao tentar executar esta ação, foi gerado um LOG do mesmo, tente novamente mais tarde.";
        }
    }

}
