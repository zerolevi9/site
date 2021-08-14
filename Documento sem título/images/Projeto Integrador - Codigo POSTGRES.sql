create database Projeto;
use projeto;

-- -----------------------------------------------------
-- Table Conteudo
-- -----------------------------------------------------

CREATE table Conteudo (
  ContId INT NOT NULL,
  Nome VARCHAR(45) NULL,
  Classificacao VARCHAR(45) NULL,
  Tipo VARCHAR(45) NULL,
  Duracao VARCHAR(45) NULL
  )
;

-- -----------------------------------------------------
-- Table UserWatchContent
-- -----------------------------------------------------

CREATE TABLE UserWatchContent (
  UsWaId VARCHAR(45) NOT NULL,
  UserId INT NOT NULL,
  ContId INT NOT NULL,
  Data DATE NULL,
  Usuario VARCHAR(45) NULL,
  Tempo TIME NULL,
  Nome VARCHAR(45) NULL
  )
;


-- -----------------------------------------------------
-- Table Historico
-- -----------------------------------------------------

CREATE TABLE Historico (
  HistId INT NOT NULL,
  UsWaId VARCHAR(45) NOT NULL,
  Nome VARCHAR(45) NULL,
  Usuario VARCHAR(45) NULL,
  Data DATE NULL,
  UserId INT NOT NULL,
  ContId INT NOT NULL)
;


-- -----------------------------------------------------
-- Table Home
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS Home (
  HomeId INT NOT NULL,
  HistId INT NOT NULL,
  Conteudos VARCHAR(45) NULL,
  Contatos VARCHAR(45) NULL,
  Interacoes VARCHAR(45) NULL)
;


-- -----------------------------------------------------
-- Table Usuario
-- -----------------------------------------------------

CREATE TABLE Usuario (
  UserId INT NOT NULL,
  Nome VARCHAR(45) NULL,
  Idade INT NULL,
  Sexo CHAR NULL,
  HomeId INT NOT NULL)
;



-- -----------------------------------------------------
-- Table UserComment
-- -----------------------------------------------------

CREATE TABLE UserComment (
  CommentId INT NOT NULL,
  Conteudo_ContId INT NOT NULL,
  UserId INT NOT NULL,
  Usuario VARCHAR(45) NULL,
  Texto VARCHAR(1000) NULL,
  Data DATE NULL,
  Likes INT NULL)
;


-- -----------------------------------------------------
-- Table Mensagem
-- -----------------------------------------------------

CREATE TABLE Mensagem (
  MensId INT NOT NULL,
  RemetId INT NOT NULL,
  DestId INT NOT NULL,
  Mensagem VARCHAR(300) NULL,
  Data DATE NULL,
  Remetente VARCHAR(45) NULL,
  VIsualizada CHAR  NULL)
;


INSERT INTO Projeto.conteudo (contid,nome,classificacao,tipo,duracao) VALUES
	 (2,'One Piece','L','Anime','0:24:12'),
	 (3,'Boku no Hero','12','FIlme','2:03:00'),
	 (4,'Bleach','14','Anime','0:23:58'),
	 (5,'Naruto','L','OVA','0:43:58'),
	 (1,'Dragon Ball','10','Live-Action','1:32:15');
     
INSERT INTO Projeto.historico (histid,uswaid,nome,usuario,data,userid,contid) VALUES
	 (1,'1','Naruto','Agostinho','2021-07-23',123,9),
	 (2,'2','One Piece','CEzzar34','2021-07-27',456,8),
	 (3,'3','Bleach','PArank','2021-07-12',789,7),
	 (4,'4','Bleach','Gabriel332','2021-07-18',912,6);
INSERT INTO Projeto.home (homeid,histid,conteudos,contatos,interacoes) VALUES
	 (1,1,'Bleach, Naruto, One Piece','Alexandre, Augusto, Be445','Augusto, "e ai cara"'),
	 (2,2,'Boku no hero, Tokio Ghoul','Alima834, Goku882','Goku88, "discordo de vc"'),
	 (3,3,'Naruto, Dragon Ball, Bleach','Renat99nha, Oliver3','88Paula, "tudo bem?"'),
	 (4,4,'Naruto, Tokio Ghoul, Sword Art Online','GAbriel, PamelaS2','GABriel, "desculpa"');
INSERT INTO Projeto.mensagem (mensid,remetid,destid,mensagem,data,remetente,visualizada) VALUES
	 (1,5,3,'Quer assistir mais tarde?','2021-08-01','Alex33','y'),
	 (2,6,4,'Não achei aqui','2021-08-03','Party65','n'),
	 (3,7,5,'Talvez mais tarde','2021-08-02','GOku88','y'),
	 (4,8,6,'Gostei muito','2021-07-25','O33nyx','y');
INSERT INTO Projeto.usercomment (commentid,conteudo_contid,userid,usuario,texto,data,likes) VALUES
	 (1,1,1,'Poly776','Tava ansioso pra quando lançasse','2021-08-01',1),
	 (2,2,2,'239842Sat','Qualidade caiu mt','2021-08-03',34),
	 (3,3,3,'Goku88','ok, esse me surpreendeu','2021-07-30',0),
	 (4,4,4,'Mark3','Mais algume vendo em 2021?','2021-07-29',7);
INSERT INTO Projeto.userwatchcontent (uswaid,userid,contid,data,usuario,tempo,nome) VALUES
	 ('1',1,1,'2021-07-27','Goku88','10:34:22','Mauro'),
	 ('2',2,2,'2021-07-24','Kas99','14:20:03','Kronk32'),
	 ('3',3,3,'2021-07-17','Midorya','22:43:15','12Por34'),
	 ('4',4,4,'2021-07-06','August55','08:00:23','OhayoPocco');
INSERT INTO Projeto.usuario (userid,nome,idade,sexo,homeid) VALUES
	 (1,'Ash34ley',15,'F',1),
	 (2,'Kosh2',17,'M',2),
	 (3,'Monark56',14,'M',3),
	 (4,'Goku88',18,'M',4),
	 (5,'76Aspt',16,'F',5),
	 (6,'KimetS2',15,'F',6),
	 (7,'Henk32',19,'M',7);

