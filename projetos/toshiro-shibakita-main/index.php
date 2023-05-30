<html>

<head>
<title>Exemplo PHP</title>
</head>
<body>

<?php
// Configurações iniciais do PHP
ini_set("display_errors", 1); // Habilita a exibição de erros
header('Content-Type: text/html; charset=iso-8859-1'); // Define o tipo de conteúdo e o charset da página

// Exibe a versão atual do PHP
echo 'Versao Atual do PHP: ' . phpversion() . '<br>';

// Configurações do banco de dados
$servername = "54.234.153.24"; // Endereço do servidor do banco de dados
$username = "root"; // Nome de usuário do banco de dados
$password = "Senha123"; // Senha do banco de dados
$database = "meubanco"; // Nome do banco de dados

// Criar conexão com o banco de dados
$link = new mysqli($servername, $username, $password, $database);

/* Verificar conexão */
if (mysqli_connect_errno()) {
    printf("Connect failed: %s\n", mysqli_connect_error());
    exit();
}

// Gerar valores aleatórios para inserção no banco de dados
$valor_rand1 =  rand(1, 999);
$valor_rand2 = strtoupper(substr(bin2hex(random_bytes(4)), 1));
$host_name = gethostname();

// Montar a query de inserção
$query = "INSERT INTO dados (AlunoID, Nome, Sobrenome, Endereco, Cidade, Host) VALUES ('$valor_rand1' , '$valor_rand2', '$valor_rand2', '$valor_rand2', '$valor_rand2','$host_name')";

// Executar a query de inserção
if ($link->query($query) === TRUE) {
  echo "New record created successfully";
} else {
  echo "Error: " . $link->error;
}

?>
</body>
</html>
