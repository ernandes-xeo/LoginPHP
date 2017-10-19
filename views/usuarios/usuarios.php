<?php
include_once '../models/UsuarioDao.php';
$usarioDao = new UsuarioDao();
$usuarios = $usarioDao->listar();
?>
<section id="main">
    <div class="main-contener">
        
       
        
        <br />
        <div class="boxe">
            <h2>Usuarios</h2>
        </div>
        
         <?php 
        if(!empty($_REQUEST['editar']) && $_REQUEST['editar'] == 'ok' ){
            
            echo "<span>Alterado com sucesso!</span>";
            
        }
        ?>
        <p> Lista de Usuários
        <br />
        <a href="../controllers/usuariosController.php?botao=cadastrar" style="float: right">Cadastrar</a>
        <br />
        <br />
        <table width="100%" border="1px">
            <thead>
                <td>Nome</td>
                <td>Email</td>
                <td>Ações</td>
            </thead>          
            <?php foreach ($usuarios as $usuario) { ?>
            <tbody>
                <td><?php echo $usuario->getNome() ?></td>
                <td><?php echo $usuario->getEmail() ?></td>
                <td align="center">
                    <a href="../controllers/usuariosController.php?botao=exibir&id=<?php echo $usuario->getId() ?>">Exibir </a> | 
                    <a href="../controllers/usuariosController.php?botao=excluir&id=<?php echo $usuario->getId() ?>">Excluir</a>
                   
                </td>
            <?php } ?>
            </tbody>                    
        </table>  
        <br />
    </div>
    <section id='left-destaques'>Left com destaques</section>
</section>