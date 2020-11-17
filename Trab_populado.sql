-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: comilao
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bairro` (
  `idBairro` int NOT NULL,
  `descricao_bairro` varchar(45) NOT NULL,
  `Cidade_idCidade` int NOT NULL,
  PRIMARY KEY (`idBairro`),
  KEY `fk_Bairro_Cidade1_idx` (`Cidade_idCidade`),
  CONSTRAINT `fk_Bairro_Cidade1` FOREIGN KEY (`Cidade_idCidade`) REFERENCES `cidade` (`idCidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (1,'Ceilandia Sul',1),(2,'Areal',2),(3,'Taguatinga Norte',3),(4,'Ceilandia Norte',1),(5,'SCLN',5);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `idCargo` int NOT NULL,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Garcom'),(2,'Gerente'),(3,'Cozinheiro');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `idCidade` int NOT NULL,
  `descricao_cidade` varchar(45) NOT NULL,
  `UF_idUF` int NOT NULL,
  PRIMARY KEY (`idCidade`),
  KEY `fk_Cidade_UF1_idx` (`UF_idUF`),
  CONSTRAINT `fk_Cidade_UF1` FOREIGN KEY (`UF_idUF`) REFERENCES `uf` (`idUF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
INSERT INTO `cidade` VALUES (1,'Ceilandia',1),(2,'Aguas Claras',1),(3,'Taguatinga',1),(4,'Sao Sebastiao',1),(5,'Asa Norte',1);
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `idCliente` int NOT NULL,
  `Pessoa_idPessoa` int NOT NULL,
  `Funcionario_idFuncionario` int NOT NULL,
  PRIMARY KEY (`idCliente`),
  KEY `fk_Cliente_Pessoa1_idx` (`Pessoa_idPessoa`),
  KEY `fk_Cliente_Funcionario1_idx` (`Funcionario_idFuncionario`),
  CONSTRAINT `fk_Cliente_Funcionario1` FOREIGN KEY (`Funcionario_idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  CONSTRAINT `fk_Cliente_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,6,2),(2,7,1),(3,8,3),(4,9,3),(5,10,2);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente_mesa`
--

DROP TABLE IF EXISTS `cliente_mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente_mesa` (
  `Cliente_idCliente` int NOT NULL,
  `Mesa_idMesa` int NOT NULL,
  PRIMARY KEY (`Cliente_idCliente`,`Mesa_idMesa`),
  KEY `fk_Cliente_has_Mesa_Mesa1_idx` (`Mesa_idMesa`),
  KEY `fk_Cliente_has_Mesa_Cliente1_idx` (`Cliente_idCliente`),
  CONSTRAINT `fk_Cliente_has_Mesa_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Cliente_has_Mesa_Mesa1` FOREIGN KEY (`Mesa_idMesa`) REFERENCES `mesa` (`idMesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente_mesa`
--

LOCK TABLES `cliente_mesa` WRITE;
/*!40000 ALTER TABLE `cliente_mesa` DISABLE KEYS */;
INSERT INTO `cliente_mesa` VALUES (1,1),(2,2),(3,3),(4,4),(5,5);
/*!40000 ALTER TABLE `cliente_mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `idEndereco` int NOT NULL,
  `CEP` varchar(8) DEFAULT NULL,
  `nome_rua` varchar(45) NOT NULL,
  `complemento` varchar(45) DEFAULT NULL,
  `numero` varchar(45) NOT NULL,
  `Bairro_idBairro` int NOT NULL,
  `Tipo_Endereco_idTipo_Endereco` int NOT NULL,
  PRIMARY KEY (`idEndereco`),
  KEY `fk_Endereco_Tipo_Endereco1_idx` (`Tipo_Endereco_idTipo_Endereco`),
  KEY `fk_Endereco_Bairro1_idx` (`Bairro_idBairro`),
  CONSTRAINT `fk_Endereco_Bairro1` FOREIGN KEY (`Bairro_idBairro`) REFERENCES `bairro` (`idBairro`),
  CONSTRAINT `fk_Endereco_Tipo_Endereco1` FOREIGN KEY (`Tipo_Endereco_idTipo_Endereco`) REFERENCES `tipo_endereco` (`idTipo_Endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'71000242','QNN 32 Conjunto H','Lote','07',1,1),(2,'78000222','QNM 23 Conjunto B','Lote','15',3,1),(3,'73400123','Quadra 23 Rua 32 Bloco F','Condominio','10',2,1),(4,'70123444','Quadra 89 rua 65','Lote','13',4,2),(5,'72888111','QNM 73 Conjunto J','Lote','26',1,1),(6,'75000234','QNP 09 Conjunto B','Lote','22',4,1),(7,'72111000','Quadra 42 Rua 10 Bloco B','Condominio','90',2,1),(8,'73444982','Quadra 99 rua 03','Lote','10',2,2),(9,'71000254','QNN 03 Conjunto H','Lote','01',4,1),(10,'70176291','Quadra 66 Conjunto A','Lote','11',3,1);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `escolaridade`
--

DROP TABLE IF EXISTS `escolaridade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `escolaridade` (
  `idEscolaridade` int NOT NULL,
  `desc_escolaridade` varchar(45) NOT NULL,
  PRIMARY KEY (`idEscolaridade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `escolaridade`
--

LOCK TABLES `escolaridade` WRITE;
/*!40000 ALTER TABLE `escolaridade` DISABLE KEYS */;
INSERT INTO `escolaridade` VALUES (1,'Fundamental - Incompleto'),(2,'Fundamental Completo'),(3,'Medio - Incompleto'),(4,'MEdio - Completo'),(5,'Superior - Incompleto'),(6,'Superior - Completo');
/*!40000 ALTER TABLE `escolaridade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado_civil`
--

DROP TABLE IF EXISTS `estado_civil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado_civil` (
  `idEstado_civil` int NOT NULL,
  `desc_estado_civil` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstado_civil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado_civil`
--

LOCK TABLES `estado_civil` WRITE;
/*!40000 ALTER TABLE `estado_civil` DISABLE KEYS */;
INSERT INTO `estado_civil` VALUES (1,'Solteiro'),(2,'Casado'),(3,'Separado'),(4,'Divorciado'),(5,'Viuvo');
/*!40000 ALTER TABLE `estado_civil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estoque`
--

DROP TABLE IF EXISTS `estoque`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estoque` (
  `idEstoque` int NOT NULL,
  `qtd_estoque` int NOT NULL,
  `Produto_idProduto` int NOT NULL,
  PRIMARY KEY (`idEstoque`),
  KEY `fk_Estoque_Produto1_idx` (`Produto_idProduto`),
  CONSTRAINT `fk_Estoque_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estoque`
--

LOCK TABLES `estoque` WRITE;
/*!40000 ALTER TABLE `estoque` DISABLE KEYS */;
INSERT INTO `estoque` VALUES (1,700,1),(2,500,2),(3,900,3),(4,400,4),(5,100,5),(6,40,6),(7,50,7),(8,250,8),(9,200,9),(10,300,10),(11,750,11),(12,130,12),(13,300,13),(14,1200,14),(15,5000,15);
/*!40000 ALTER TABLE `estoque` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `filiacao`
--

DROP TABLE IF EXISTS `filiacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filiacao` (
  `idFiliacao` int NOT NULL,
  `nome_mae` varchar(45) NOT NULL,
  `nome_pai` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idFiliacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filiacao`
--

LOCK TABLES `filiacao` WRITE;
/*!40000 ALTER TABLE `filiacao` DISABLE KEYS */;
INSERT INTO `filiacao` VALUES (1,'Maria de Souza Santos','Joao Mario Silva Santos'),(2,'Bianca Bouças Holanda ','Artur Lobo Dias'),(3,'Naima Fernandes Franca','Vladimir Navais Franca'),(4,'Klara Vieira Miguel','Gil Freire Monsato'),(5,'Dora Cartaxo Tavora','Nikolas Pimenta Granjeiro'),(6,'Ariana Bonilha Pegado','Luke Duarte Viveiros'),(7,'Brianna Ximenes Castanheira','Rogério Feira Oleiro'),(8,'Viviana Lamenha Espinosa','Jesus Teodoro Assis'),(9,'Alda Mantas Morão','Evandro Gois Brito'),(10,'Jade Pinho Leite','Eddy Vieira Mendes');
/*!40000 ALTER TABLE `filiacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `idFuncionario` int NOT NULL,
  `salario` double NOT NULL,
  `bonus_salarial` double DEFAULT NULL,
  `Pessoa_idPessoa` int NOT NULL,
  `Cargo_idCargo` int NOT NULL,
  PRIMARY KEY (`idFuncionario`),
  KEY `fk_Funcionario_Pessoa1_idx` (`Pessoa_idPessoa`),
  KEY `fk_Funcionario_Cargo1_idx` (`Cargo_idCargo`),
  CONSTRAINT `fk_Funcionario_Cargo1` FOREIGN KEY (`Cargo_idCargo`) REFERENCES `cargo` (`idCargo`),
  CONSTRAINT `fk_Funcionario_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,3500,150.5,1,1),(2,3500,0,2,1),(3,3500,150.5,3,1),(4,4500.5,300,4,2),(5,4500.5,300,5,2);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_menu`
--

DROP TABLE IF EXISTS `item_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_menu` (
  `idItem_Menu` int NOT NULL,
  `descricao_item` varchar(45) NOT NULL,
  `valor` double NOT NULL,
  `popularidade` int NOT NULL,
  `Tipo_item_idTipo_item` int NOT NULL,
  PRIMARY KEY (`idItem_Menu`),
  KEY `fk_Item_Menu_Tipo_item1_idx` (`Tipo_item_idTipo_item`),
  CONSTRAINT `fk_Item_Menu_Tipo_item1` FOREIGN KEY (`Tipo_item_idTipo_item`) REFERENCES `tipo_item` (`idTipo_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_menu`
--

LOCK TABLES `item_menu` WRITE;
/*!40000 ALTER TABLE `item_menu` DISABLE KEYS */;
INSERT INTO `item_menu` VALUES (1,'Parmegiana',59.6,10,1),(2,'Pocao de batata frita',25.5,10,2),(3,'Frango a passarinho',20.99,8,2),(4,'Carne de sol com mandioca',35.99,9,1),(5,'Refigerante 2 Litros',6.99,10,5),(6,'File de Tilapia',30.99,7,1),(7,'Tucunare na brasa',70.99,9,1),(8,'Escondidinho de carne',25.99,10,3),(9,'Aneis de cebola fritos',25.99,8,2),(10,'Lasanha de frango',39.99,10,1);
/*!40000 ALTER TABLE `item_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_menu_cliente`
--

DROP TABLE IF EXISTS `item_menu_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_menu_cliente` (
  `id_item_menu_cliente` int NOT NULL,
  `Item_Menu_idItem_Menu` int NOT NULL,
  `Cliente_idCliente` int NOT NULL,
  `qtd_item` int NOT NULL,
  `media_gasto` double NOT NULL,
  PRIMARY KEY (`id_item_menu_cliente`),
  KEY `fk_Item_Menu_has_Cliente_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Item_Menu_has_Cliente_Item_Menu1_idx` (`Item_Menu_idItem_Menu`),
  CONSTRAINT `fk_Item_Menu_has_Cliente_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Item_Menu_has_Cliente_Item_Menu1` FOREIGN KEY (`Item_Menu_idItem_Menu`) REFERENCES `item_menu` (`idItem_Menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_menu_cliente`
--

LOCK TABLES `item_menu_cliente` WRITE;
/*!40000 ALTER TABLE `item_menu_cliente` DISABLE KEYS */;
INSERT INTO `item_menu_cliente` VALUES (1,7,1,15,230),(2,7,2,15,200),(3,2,3,10,100),(4,7,4,18,300),(5,10,5,35,150);
/*!40000 ALTER TABLE `item_menu_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_menu_pedido`
--

DROP TABLE IF EXISTS `item_menu_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_menu_pedido` (
  `Item_Menu_idItem_Menu` int NOT NULL,
  `Pedido_idPedido` int NOT NULL,
  `quantidade` int NOT NULL,
  `valor_parcial` double NOT NULL,
  KEY `fk_Item_Menu_has_Pedido_Pedido1_idx` (`Pedido_idPedido`),
  KEY `fk_Item_Menu_has_Pedido_Item_Menu1_idx` (`Item_Menu_idItem_Menu`),
  CONSTRAINT `fk_Item_Menu_has_Pedido_Item_Menu1` FOREIGN KEY (`Item_Menu_idItem_Menu`) REFERENCES `item_menu` (`idItem_Menu`),
  CONSTRAINT `fk_Item_Menu_has_Pedido_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_menu_pedido`
--

LOCK TABLES `item_menu_pedido` WRITE;
/*!40000 ALTER TABLE `item_menu_pedido` DISABLE KEYS */;
INSERT INTO `item_menu_pedido` VALUES (7,1,3,210),(1,1,1,59.6),(10,1,2,79.98),(1,2,1,59.6),(10,2,1,39.99),(2,3,2,51),(7,4,5,354.95),(4,4,1,35.99),(5,4,1,5.99),(10,5,4,159.96),(4,5,1,35.99);
/*!40000 ALTER TABLE `item_menu_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_menu_produto`
--

DROP TABLE IF EXISTS `item_menu_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_menu_produto` (
  `Item_Menu_idItem_Menu` int NOT NULL,
  `Produto_idProduto` int NOT NULL,
  KEY `fk_Item_Menu_has_Produto_Produto1_idx` (`Produto_idProduto`),
  KEY `fk_Item_Menu_has_Produto_Item_Menu1_idx` (`Item_Menu_idItem_Menu`),
  CONSTRAINT `fk_Item_Menu_has_Produto_Item_Menu1` FOREIGN KEY (`Item_Menu_idItem_Menu`) REFERENCES `item_menu` (`idItem_Menu`),
  CONSTRAINT `fk_Item_Menu_has_Produto_Produto1` FOREIGN KEY (`Produto_idProduto`) REFERENCES `produto` (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_menu_produto`
--

LOCK TABLES `item_menu_produto` WRITE;
/*!40000 ALTER TABLE `item_menu_produto` DISABLE KEYS */;
INSERT INTO `item_menu_produto` VALUES (1,6),(1,15),(2,11),(2,14),(2,12),(3,6),(4,9),(4,8),(5,1),(5,3),(6,15),(6,7),(7,15),(7,7),(8,4),(8,9),(8,5),(8,11),(9,13),(9,12),(1,15),(10,15),(10,4),(10,5),(10,10);
/*!40000 ALTER TABLE `item_menu_produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logotipo_restaurante`
--

DROP TABLE IF EXISTS `logotipo_restaurante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logotipo_restaurante` (
  `idLogotipo_Restaurante` int NOT NULL,
  `referencia_logotipo` varchar(45) NOT NULL,
  PRIMARY KEY (`idLogotipo_Restaurante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logotipo_restaurante`
--

LOCK TABLES `logotipo_restaurante` WRITE;
/*!40000 ALTER TABLE `logotipo_restaurante` DISABLE KEYS */;
INSERT INTO `logotipo_restaurante` VALUES (1,'logotipo_comilao.jpg');
/*!40000 ALTER TABLE `logotipo_restaurante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mesa`
--

DROP TABLE IF EXISTS `mesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mesa` (
  `idMesa` int NOT NULL,
  `quantidade_lugares` int NOT NULL,
  `disponibilidade` tinyint NOT NULL,
  `Pedido_idPedido` int NOT NULL,
  `Funcionario_idFuncionario` int NOT NULL,
  PRIMARY KEY (`idMesa`),
  KEY `fk_Mesa_Pedido1_idx` (`Pedido_idPedido`),
  KEY `fk_Mesa_Funcionario1_idx` (`Funcionario_idFuncionario`),
  CONSTRAINT `fk_Mesa_Funcionario1` FOREIGN KEY (`Funcionario_idFuncionario`) REFERENCES `funcionario` (`idFuncionario`),
  CONSTRAINT `fk_Mesa_Pedido1` FOREIGN KEY (`Pedido_idPedido`) REFERENCES `pedido` (`idPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mesa`
--

LOCK TABLES `mesa` WRITE;
/*!40000 ALTER TABLE `mesa` DISABLE KEYS */;
INSERT INTO `mesa` VALUES (1,3,1,1,1),(2,7,1,2,2),(3,10,1,3,3),(4,4,1,4,3),(5,6,1,5,1);
/*!40000 ALTER TABLE `mesa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idPais` int NOT NULL,
  `Cod_pais` varchar(3) NOT NULL,
  `nome_pais` varchar(45) NOT NULL,
  PRIMARY KEY (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'55','Brasil'),(2,'54','Argentina'),(3,'01','Estados Unidos'),(4,'44','Inglaterra'),(5,'52','Mexico');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedido`
--

DROP TABLE IF EXISTS `pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedido` (
  `idPedido` int NOT NULL,
  `observacao` longtext NOT NULL,
  `valor_total` double NOT NULL,
  `status_pedido` tinyint NOT NULL,
  `data_hora_pedido` datetime NOT NULL,
  `Recibo_idRecibo` int DEFAULT NULL,
  PRIMARY KEY (`idPedido`),
  KEY `fk_Pedido_Recibo1_idx` (`Recibo_idRecibo`),
  CONSTRAINT `fk_Pedido_Recibo1` FOREIGN KEY (`Recibo_idRecibo`) REFERENCES `recibo` (`idRecibo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedido`
--

LOCK TABLES `pedido` WRITE;
/*!40000 ALTER TABLE `pedido` DISABLE KEYS */;
INSERT INTO `pedido` VALUES (1,'Sem observacoes',350.59,0,'2020-10-01 12:00:09',1),(2,'Batata frita no lugar do pure de batatas',100.5,0,'2020-11-22 13:00:09',2),(3,'Sem Observacoes',55.59,0,'2020-03-11 11:20:00',3),(4,'Sem observacoes',400.9,0,'2020-07-10 11:20:00',4),(5,'Copos sem gelo',200.15,0,'2020-10-25 12:00:09',5);
/*!40000 ALTER TABLE `pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `idPessoa` int NOT NULL,
  `nome` varchar(45) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `identidade` varchar(7) NOT NULL,
  `e-mail` varchar(45) NOT NULL,
  `salario` double DEFAULT NULL,
  `Pais_idPais` int NOT NULL,
  `Sexo_idSexo` int NOT NULL,
  `Estado_civil_idEstado_civil` int NOT NULL,
  `Escolaridade_idEscolaridade` int NOT NULL,
  `Filiacao_idFiliacao` int NOT NULL,
  `Endereco_idEndereco` int NOT NULL,
  PRIMARY KEY (`idPessoa`),
  KEY `fk_Pessoa_Pais1_idx` (`Pais_idPais`),
  KEY `fk_Pessoa_Sexo1_idx` (`Sexo_idSexo`),
  KEY `fk_Pessoa_Endereco1_idx` (`Endereco_idEndereco`),
  KEY `fk_Pessoa_Estado_civil1_idx` (`Estado_civil_idEstado_civil`),
  KEY `fk_Pessoa_Escolaridade1_idx` (`Escolaridade_idEscolaridade`),
  KEY `fk_Pessoa_Filiacao1_idx` (`Filiacao_idFiliacao`),
  CONSTRAINT `fk_Pessoa_Endereco1` FOREIGN KEY (`Endereco_idEndereco`) REFERENCES `endereco` (`idEndereco`),
  CONSTRAINT `fk_Pessoa_Escolaridade1` FOREIGN KEY (`Escolaridade_idEscolaridade`) REFERENCES `escolaridade` (`idEscolaridade`),
  CONSTRAINT `fk_Pessoa_Estado_civil1` FOREIGN KEY (`Estado_civil_idEstado_civil`) REFERENCES `estado_civil` (`idEstado_civil`),
  CONSTRAINT `fk_Pessoa_Filiacao1` FOREIGN KEY (`Filiacao_idFiliacao`) REFERENCES `filiacao` (`idFiliacao`),
  CONSTRAINT `fk_Pessoa_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`),
  CONSTRAINT `fk_Pessoa_Sexo1` FOREIGN KEY (`Sexo_idSexo`) REFERENCES `sexo` (`idSexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Malak Capistrano Barreto','53841284130','1249632','malak@email.com',1500.5,1,2,1,4,1,1),(2,'Rita Valente Campos','44785698712','1254896','ritaV@email.com',3000.5,1,2,2,3,2,2),(3,'Yara Monforte Urias','11235489652','1147895','mofotes@email.com',7000,1,2,1,2,3,3),(4,'Tainara Carmona Carvalheiro','11235629871','5562317','cavalheiro@email.com',10500.5,1,2,1,6,4,4),(5,'Virgílio Padilha Araújo','10232145789','1149853','padilha@email.com',2500,1,1,5,2,5,5),(6,'Isabela Rijo Barroqueiro','15486523478','1420398','isabelaRijo@email.com',9000,1,2,4,4,6,6),(7,'Henzo Barrocas Freitas','10235496785','1116574','henzo@email.com',1500.5,1,1,3,1,7,7),(8,'Lázaro Angelim Andrade','12354036875','5568952','langelimandrade@email.com',3700.5,1,1,2,2,8,8),(9,'Mellyssa Dinis Pastana','55569842103','4423986','mellyssa@email.com',25000,1,2,1,4,9,9),(10,'Tito Raminhos Matosinhos','12987562358','1254896','matosinhos@email.com',16000.5,1,1,3,4,10,10);
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produto`
--

DROP TABLE IF EXISTS `produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produto` (
  `idProduto` int NOT NULL,
  `desc_prod` varchar(45) NOT NULL,
  PRIMARY KEY (`idProduto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'Coca cola'),(2,'Antartica'),(3,'Guarana'),(4,'Creme de leite'),(5,'Leite '),(6,'Frango'),(7,'Peixe'),(8,'Mandioca'),(9,'Carne'),(10,'Massas'),(11,'Batata'),(12,'Oleo'),(13,'Cebola'),(14,'Queijo'),(15,'Arroz');
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibo`
--

DROP TABLE IF EXISTS `recibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibo` (
  `idRecibo` int NOT NULL,
  `cometario_cliente` varchar(45) NOT NULL,
  `data_hora_recibo` datetime DEFAULT NULL,
  `Cliente_idCliente` int NOT NULL,
  `Logotipo_Restaurante_idLogotipo_Restaurante` int NOT NULL,
  PRIMARY KEY (`idRecibo`),
  KEY `fk_Recibo_Cliente1_idx` (`Cliente_idCliente`),
  KEY `fk_Recibo_Logotipo_Restaurante1_idx` (`Logotipo_Restaurante_idLogotipo_Restaurante`),
  CONSTRAINT `fk_Recibo_Cliente1` FOREIGN KEY (`Cliente_idCliente`) REFERENCES `cliente` (`idCliente`),
  CONSTRAINT `fk_Recibo_Logotipo_Restaurante1` FOREIGN KEY (`Logotipo_Restaurante_idLogotipo_Restaurante`) REFERENCES `logotipo_restaurante` (`idLogotipo_Restaurante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibo`
--

LOCK TABLES `recibo` WRITE;
/*!40000 ALTER TABLE `recibo` DISABLE KEYS */;
INSERT INTO `recibo` VALUES (1,'Bom dinamismo entre os garcons','2020-10-01 12:34:09',1,1),(2,'Mau atendimento','2020-11-22 13:30:09',2,1),(3,'Demora na entrega do pedido','2020-03-11 12:00:00',3,1),(4,'Valor acima do padrao','2020-07-10 11:59:00',4,1),(5,'Boa higiene do local','2020-10-25 12:34:09',5,1);
/*!40000 ALTER TABLE `recibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sexo`
--

DROP TABLE IF EXISTS `sexo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sexo` (
  `idSexo` int NOT NULL,
  `descricao_sexo` varchar(45) NOT NULL,
  PRIMARY KEY (`idSexo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sexo`
--

LOCK TABLES `sexo` WRITE;
/*!40000 ALTER TABLE `sexo` DISABLE KEYS */;
INSERT INTO `sexo` VALUES (1,'Masculino'),(2,'Feminino');
/*!40000 ALTER TABLE `sexo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefone`
--

DROP TABLE IF EXISTS `telefone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefone` (
  `idTelefone` int NOT NULL,
  `telefone` varchar(9) NOT NULL,
  `DDD` varchar(2) NOT NULL,
  `Pessoa_idPessoa` int NOT NULL,
  PRIMARY KEY (`idTelefone`),
  KEY `fk_Telefone_Pessoa1_idx` (`Pessoa_idPessoa`),
  CONSTRAINT `fk_Telefone_Pessoa1` FOREIGN KEY (`Pessoa_idPessoa`) REFERENCES `pessoa` (`idPessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefone`
--

LOCK TABLES `telefone` WRITE;
/*!40000 ALTER TABLE `telefone` DISABLE KEYS */;
INSERT INTO `telefone` VALUES (1,'3375-2259','61',1),(2,'3232-2218','61',4),(3,'1145-3258','62',3),(4,'4265-4475','62',9),(5,'1136-8874','62',2),(6,'5574-9632','41',7),(7,'4821-6298','18',6),(8,'1147-2631','25',4),(9,'4236-5210','17',8),(10,'4246-6314','23',5);
/*!40000 ALTER TABLE `telefone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_endereco`
--

DROP TABLE IF EXISTS `tipo_endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_endereco` (
  `idTipo_Endereco` int NOT NULL,
  `descricao_tipoEndereco` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo_Endereco`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_endereco`
--

LOCK TABLES `tipo_endereco` WRITE;
/*!40000 ALTER TABLE `tipo_endereco` DISABLE KEYS */;
INSERT INTO `tipo_endereco` VALUES (1,'Endereco residencial'),(2,'Endereco comercial');
/*!40000 ALTER TABLE `tipo_endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_item`
--

DROP TABLE IF EXISTS `tipo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_item` (
  `idTipo_item` int NOT NULL,
  `descricao_item` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipo_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_item`
--

LOCK TABLES `tipo_item` WRITE;
/*!40000 ALTER TABLE `tipo_item` DISABLE KEYS */;
INSERT INTO `tipo_item` VALUES (1,'Prato principal'),(2,'Prato de entrada'),(3,'Acompanhamento'),(4,'Bebida'),(5,'Refigerantes'),(6,'Sobremesa');
/*!40000 ALTER TABLE `tipo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uf` (
  `idUF` int NOT NULL,
  `Descricao_UF` varchar(45) NOT NULL,
  `DDD` varchar(2) NOT NULL,
  `Pais_idPais` int NOT NULL,
  PRIMARY KEY (`idUF`),
  KEY `fk_UF_Pais1_idx` (`Pais_idPais`),
  CONSTRAINT `fk_UF_Pais1` FOREIGN KEY (`Pais_idPais`) REFERENCES `pais` (`idPais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (1,'DF','61',1),(2,'GO','62',1),(3,'SP','18',1),(4,'RJ','24',1),(5,'RS','55',1);
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-17 17:30:05
