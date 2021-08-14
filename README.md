# site
ProjetoIntegrador

### 1. COMPONENTES<br>
Integrantes do grupo
>Levi Monteiro Silva: zerolevi9@gmail.com  -
>Marcos Vinicius: marconne195@gmail.com  -
>Iaggo Rauta: iaggodelimaa@gmail.com -


### 2.MINIMUNDO<br>
>O sistema proposto devera agregar vários tipos de publico sendo focado no adolecente. 
Tambem tera um sistema de login onde os usuários terão acesso completo ao site, 
que sera o lugar de recomendação comparando os generos que o proprio viu.
tambem tera um lugar pra se julgar e comparar a outros animes e também um local para
o feedback, no seu perfil também tera a data de lançamento de cada anime desejado 
e assistido recentemente.



### 3.RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Arquivo PDF do Balsamiq](https://github.com/zerolevi9/site/blob/0394349fa49861f897039467584a532c5d78fb56/Balsamiq.pdf)



### 3.1 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?<br>


>a)
*Poderá mostrar onde estão os recomendados e ai sim mostrar o historico completo,
onde e quando você a acessou nosso dominio pela ultima veze tambem os 
generos recomendados(mais visto por voce)*

>b)  Relatorios: <ul><li>Acessar a lista de usuários, imprimir nick e a idade.</li><li>Acessar a página principal, exibir o conteúdo recomendado e as interações do usuário.</li><li>Exibir o usuário, o comentário feito e interações(apenas exibe se tiver likes). </li><li>Mostrar o nome do conteúdo, tipo e classificação.</li><li>Exibir as mensagens enviadas pelos usuários, o remetente e se a mensagem foi visualizada</li></ul>

### 4.TABELA DE DADOS DO SISTEMA:<br>
![Arquivo xlsx tabela pedida](https://github.com/zerolevi9/site/blob/6b0c45c0b80c3e2d7052334239bbd0e8469c0ff6/tabelaPI.xlsx)



 ### 5.PMC<br>

![Arquivo PDF do PMC](https://github.com/zerolevi9/site/blob/b5ffdef523d0e70f660d2ce94b6d893d07128cba/Pmc%20(1).pdf)



### 6.MODELO CONCEITUAL<br>
![Arquivo PDF do modelo conceitual](https://github.com/zerolevi9/site/blob/d2edf20ce91f44ab687258b1a823aaf4ee5e6b8c/modeloConceitual.pdf)



### 7.MODELO LÓGICO<br>
![Arquivo MWB do modelo logico](https://github.com/zerolevi9/site/blob/f451c1e27c9fec63768ffe78d5f263387abc6ec9/Modelo%20Logico.mwb)
![Arquivo PDF do modelo logico](https://github.com/zerolevi9/site/blob/adbd3a296b66d0ced82da4b0faa539f3891a0d2d/ModeloLogico.pdf)



### 8.MODELO FÍSICO<br>
![Arquivo SQL do modelo  fisico](https://github.com/zerolevi9/site/blob/2ebc1333680d2b4e28e81c58bd5c573c7adca122/Projeto%20Integrador%20-%20Codigo%20POSTGRES.sql)



### 9.INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
> a) Inserts:
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

> c) Codigo SQL:
[SQL](https://github.com/zerolevi9/site/blob/main/Documento%20sem%20t%C3%ADtulo/images/Projeto%20Integrador%20-%20Codigo%20POSTGRES.sql)


### 10.TABELAS E PRINCIPAIS CONSULTAS<br>
Acessar a lista de usuários, imprimir nick e a idade.

SELECT nome, idade FROM projeto.usuario
order by idade;
<br><br>![Resultado](https://github.com/zerolevi9/site/blob/main/Documento%20sem%20t%C3%ADtulo/images/image5.png)

Acessar a página principal, exibir o conteúdo recomendado e as interações do usuário.

SELECT conteudos, Interacoes FROM projeto.home;
<br><br>![Resultado](https://github.com/zerolevi9/site/blob/main/Documento%20sem%20t%C3%ADtulo/images/image4.png)

Exibir o usuário, o comentário feito e interações(apenas exibe se tiver likes). 

SELECT usuario, texto, likes FROM projeto.usercomment where likes > 0
order by likes;
<br><br>![Resultado](https://github.com/zerolevi9/site/blob/main/Documento%20sem%20t%C3%ADtulo/images/image3.png)

Mostrar o nome do conteúdo, tipo e classificação.

SELECT nome, tipo, Classificacao FROM projeto.conteudo;
<br><br>![Resultado](https://github.com/zerolevi9/site/blob/main/Documento%20sem%20t%C3%ADtulo/images/image2.png)

Exibir as mensagens enviadas pelos usuários, o remetente e se a mensagem foi visualizada.

SELECT Mensagem, Remetente, VIsualizada FROM projeto.mensagem;
<br><br>![Resultado](https://github.com/zerolevi9/site/blob/main/Documento%20sem%20t%C3%ADtulo/images/image1.png)
