use cadastro_usuarios;
select * from usuarios;

create table Usuarios(
usuario_id int  auto_increment primary key ,
nome_usuario varchar(25) not null,
CPF char(11) not null unique,
genero ENUM('Masculino','Feminino','Outro','Prefiro não dizer')Not null, -- o enum serve para limitar as opções de escolha
logradouro  varchar(150) not null,
bairro varchar(100) not null,
Cidade varchar(100) not null,
estado char(2) not null,
cep char(8) not null,

-- peso decimal(4,2) not null  esse aqui vai para o matheus e alexander fazerem
email_usuario varchar(30) not null unique ,
senha_usuario varchar(128) not null,
data_de_nasc date
);


insert into Usuarios(nome_usuario,CPF,genero,logradouro,bairro,Cidade,estado,cep,email_usuario,senha_usuario,data_de_nasc) values('Marcos',1223343,'Masculino', 'Rua das Alamedas 12','Vale dos Lírios','São Paulo','SP','01753252','marcos@gmail.com','1234567','1985-02-09');

truncate Usuarios; -- truncate serve para apagar os registros do banco de dados sem alterar a estrutura
select * from Usuarios;
drop table usuarios;
alter table Usuarios drop peso;

CREATE TABLE categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL
);

INSERT INTO categorias (nome) VALUES
('Medicamentos'),
('Vitaminas'),
('Higiene'),
('Infantil'),
('Beleza');

CREATE TABLE produtos (
    id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(10,2) NOT NULL,
    estoque INT NOT NULL,
    fabricante VARCHAR(100),
    data_validade DATE,
    precisa_receita BOOLEAN,
    categoria_id INT,
    imagem varchar(255),
    FOREIGN KEY (categoria_id) REFERENCES categorias(id_categoria)
);

INSERT INTO produtos 
(nome, descricao, preco, estoque, fabricante, data_validade, precisa_receita,categoria_id,imagem)
VALUES
('Paracetamol ', 'Analgésico e antitérmico', 12.90, 50, 'EMS', '2027-05-10', false, 1,'paracetamol.jpg'),
('Dipirona ', 'Analgésico e antitérmico', 8.50, 40, 'Neo Química', '2026-11-15', false, 1,'dipirona.png'),
('Vitamina C ', 'Suplemento vitamínico', 25.00, 30, 'Cimed', '2027-03-20', false, 2,null),
('Shampoo Infantil', 'Shampoo suave para crianças', 18.90, 20, 'Johnson', '2028-01-01', false, 4,null),
('Fraldas Pampers Pants G', 'Fralda descartável', 129.99, 69, 'Pampers', '2027-12-10', false,4,'frauda.png' ),
('Dorflex', 'Analgésico e Relaxante Muscular', 12.49, 40, 'Opella', '2027-02-10', false,1,'dorflex.png' ),
('Protetor Solar PS-01 ', 'Protetor Solar FPS 60 ', 42.00, 20, 'Principia', '2028-03-20', false,5,'protetor-principia.png'),
('Cálcio Vitamina D ', 'Suplemento vitamínico', 119.30, 30, 'Sanofi-Aventis', '2027-10-30', false, 2,'calcio.png'),
('Cimegripe', 'Alívio de sintomas de gripes e resfriados 20 cápsulas', 9.69, 100, 'Cimed', '2027-12-01', false, 1,'cinegripe.png'),
('Listerine Cool Mint', 'Antisséptico bucal refrescância intensa 1 Litro', 25.50, 45, 'Johnson & Johnson', '2028-08-15', false, 3,'listerine.png'),
('Expec Xarope', 'Expectorante para tosse sabor framboesa 120ml', 26.58, 35, 'Legrand', '2027-10-10', false,1, 'expec.png'),
('Sabonete Granado Bebê', 'Sabonete líquido de glicerina suave 250ml', 29.99, 20, 'Granado', '2028-05-20', false, 4,'sabonte-liquido.png'),

('Ibuprofeno', 'Anti-inflamatório e analgésico', 15.90, 60, 'Neo Química', '2027-06-15', false, 1, 'ibuprofeno.png'),
('Amoxicilina', 'Antibiótico para infecções bacterianas', 32.50, 25, 'EMS', '2026-12-20', true, 1, 'amoxicilina.png'),
('Losartana', 'Controle da pressão arterial', 18.75, 40, 'Medley', '2027-09-10', true, 1, 'losartana.png'),
('Omeprazol', 'Reduz a acidez do estômago', 22.30, 35, 'Cimed', '2027-04-05', false, 1, 'omeprazol.png'),
('Aspirina', 'Analgésico e antitérmico', 10.50, 50, 'Bayer', '2027-08-18', false, 1, 'aspirina.png'),
('Nimesulida', 'Anti-inflamatório e analgésico', 14.20, 45, 'Eurofarma', '2026-10-25', true, 1, 'nimesulida.png'),
('Buscopan', 'Alívio de cólicas abdominais', 13.99, 55, 'Boehringer Ingelheim', '2027-11-30', false, 1, 'buscopan.png'),
('Azitromicina', 'Antibiótico para infecções respiratórias', 45.00, 20, 'Pfizer', '2026-09-15', true, 1, 'azitromicina.png'), 

('Acetato de Dexaametasona', 'Corticosteroide usado em inflamações graves e alergias intensas.', 20.00, 20, 'EMS', '2026-09-15', true, 1, 'Acetato de Dexaametasona.png'),
('Albendazol', 'Vermífugo.', 12.30, 20, 'EMS', '2027-09-15', false, 1, 'Albendazol.png'),
('Bromoprida', 'Para náuseas e vômitos..', 15.60, 20, 'EMS', '2027-09-15', false, 1, 'Bromoprida.png'),
('Meloxicam', 'Anti-inflamatório para dores articulares.', 23.60, 20, 'Meloxicam', '2027-02-15', true, 1, 'Meloxicam.png'),
('Diclofenaco', 'Anti-inflamatório para dor.', 17.80, 20, 'Neo Quimica', '2027-02-15', false, 1, 'Bromoprida.png'),
('Ranitidina', 'Reduz acidez estomacal', 13.90, 20, 'Alpharma', '2027-02-15', false, 1, 'ranitidina.png'),
('Simeticona', 'Alívio de gases.', 9.90, 20, 'Medley', '2027-10-30', false, 1, 'Simeticona.png'),
('Clonazepam', 'Ansiolítico e anticonvulsivante', 25.00, 50, 'Minas-Brasil', '2027-10-30', true, 1, 'Clonazepam.png'),
('Atenolol', 'Controle da pressão arterial.', 19.80, 100, 'Biosintetica', '2027-10-30', true, 1, 'Atenolol.png'),
('prednisolona', 'Corticosteroide para inflamações e alergias', 22.00, 30, 'Biosintetica', '2027-10-30', true, 1, 'Atenolol.png'),
('Loratadina', 'Antialérgico para rinite e urticária', 16.50, 30, 'Cimed', '2027-10-30', false, 1, 'Loratadina.png'),
('Ciretizina', 'Antialérgico para coceira, coriza e espirros', 18.90, 30, 'Farmacam', '2027-10-30', false, 1, 'Ciretizina.png'),
('cloridrato de metformina', 'Controle da diabetes tipo 2', 14.90, 30, 'Prati', '2027-10-30', true, 1, 'cloridrato de metformina.png'),
('Cloridrato de Fluoxetina', 'Antidepressivo', 21.50, 30, 'PharmaScience', '2027-10-30', true, 1, 'Cloridrato de Fluoxetina'),
('Dicloridrato de Hidroxizina', 'Antialérgico com efeito calmante', 18.00, 30, 'PharmaScience', '2027-10-30', true, 1, 'Dicloridrato de Hidroxizina'),
('Gel de Limpeza Facial', 'Limpa a pele removendo oleosidade e impurezas', 35.00, 20, 'Neutrogena', '2028-03-20', false, 5, 'Gel de Limpeza Facial.png'),
('agua micelar', 'Remove maquiagem e limpa a pele suavemente', 28.00, 20, 'Neutrogena', '2029-05-20', false, 5, 'agua micelar.png'),
('Hidratante Facial', 'Hidrata e protege a pele do ressecamento', 32.00, 20, 'Cerave', '2029-05-20', false, 5, 'Hidratante Facial.png'),
('Protetor Solar FPS 30', 'Protege contra raios solares UV', 40.00, 20, 'Darrow', '2028-01-10', false, 5, 'Protetor Solar FPS 30.png'),
('Protetor Solar FPS 70', 'Alta proteção contra raios UV', 55.00, 20, 'OAZ', '2028-05-30', false, 5, 'Protetor Solar FPS 70.png'),
('Esfoliante Facial Nivea Acne Control', 'Remove células mortas e renova a pele', 25.00, 20, 'Nivea', '2028-05-30', false, 5, 'Esfoliante Facial Nivea Acne Control.png'),
('Tônico Facial', 'Equilibra o pH e prepara a pele', 27.00, 20, 'Nivea', '2029-03-30', false, 5, 'Tônico Facial.png'),
('Óleo Facial', 'Nutre profundamente a pele', 50.00, 20, 'Olibano', '2029-03-30', false, 5, 'Óleo Facial.png'),
('Máscara Facial de Algodão Pepino', 'Tratamento intensivo para a pele', 30.00, 20, 'Kiss', '2029-03-30', false, 5, 'Máscara Facial de Algodão Pepino.png'),
('Gel Secativo Secatriz  Acne Spot', 'Auxilia na secagem de espinhas', 30.00, 20, 'Dermage', '2029-10-30', false, 5, 'Gel Secativo Secatriz  Acne Spot.png'),
('Nivea Protetor Labial Original Care', 'Protege e hidrata os lábios', 12.00, 20, 'Nivea', '2029-10-30', false, 5, 'Nivea Protetor Labial Original Care.png'),
('Cetaphil Loção Hidratante', 'Pele seca e Sensivel', 22.00, 20, 'Cetaphil', '2029-10-30', false, 5, 'Cetaphil Loção Hidratante.png'),
('Talco Bebê Granado', 'Ajuda a manter a pele do bebê seca e protegida', 15.90, 20, 'Granado', '2028-10-30', false, 4, 'Talco Bebê Granado.png'),
('Lenco Umedecido Huggies Recém Nascido', 'Utilizado para limpeza suave da pele do bebê', 12.90, 20, 'Huggies', '2028-03-20', false, 4, 'Lenco Umedecido Huggies Recém Nascido.png'),
('Nistatina Óxido de Zinco', 'Protege contra irritações e assaduras', 18.00, 20, 'EMS', '2028-03-20', false, 4, 'Nistatina Óxido de Zinco.png'),
('Mamadeira Baby', 'Recipiente para alimentação de leite e líquidos', 22.00, 20, 'Mamadeira', '2029-10-10', false, 4, 'Mamadeira Baby.png'),
('Sabonete Líquido Johnson', 'Limpa a pele delicada do bebê sem agredir', 8.50, 20, 'Jhonson', '2028-05-10', false, 4, 'Sabonete Líquido Johnson.png'),
('Johnsons Baby Óleo', 'Hidrata e protege a pele do bebê', 20.00, 20, 'Jhonson', '2028-05-10', false, 4, 'Johnsons Baby Óleo.png'),
('dental clean gel infantil stitch morango', 'Auxilia na higiene bucal das crianças', 9.90, 20, 'Dental Clean', '2028-05-10', false, 4, 'dental clean gel infantil stitch morango.png'),
('escova dental infantil', 'Escova macia para dentes sensíveis', 7.90, 20, 'Dental Clean', '2028-05-10', false, 4, 'escova dental infantil.png'),
('Termômetro Clínico Digital', 'Mede a temperatura corporal do bebê', 35.00, 20, 'Bioland', '2029-08-30', false, 4, 'Termômetro Clínico Digital.png'),
('Aspirador Nasal Lolly', 'Auxilia na limpeza das vias respiratórias', 18.90, 20, 'Lolly Kindy', '2029-08-30', false, 4, 'Aspirador Nasal Lolly.png'),
('Johnsons Shampoo Glicerina', 'Limpa os cabelos sem irritar os olhos', 16.00, 20, 'Jhonsons', '2029-08-30', false, 4, 'Johnsons Shampoo Glicerina.png'),
('Huggies Colônia Extra Suave', 'Deixa os cabelos macios e fáceis de pentear', 17.00, 20, 'Huggies', '2029-08-30', false, 4, 'Huggies Colônia Extra Suave.png'),
('Vitamina b12 Acido Folico Ferro 60cps', 'Importante para o sistema nervoso e produção de energia', 29.90, 20, 'Flora Nativa do Brasil', '2029-08-30', false, 2, 'Vitamina b12 Acido Folico Ferro 60cps.png'),
('Complexo B Concentrado 20 Comprimidos', 'Conjunto de vitaminas que ajudam no metabolismo e energia', 32.50, 20, 'Arte Nativa', '2029-08-30', false, 2, 'Complexo B Concentrado 20 Comprimidos.png'),
('Multivitamínico A a Z 500mg 60 Capsulas', 'Conjunto de vitaminas que ajudam no metabolismo e energia', 32.50, 20, 'Flora Nativa do Brasil', '2029-08-30', false, 2, 'Multivitamínico A a Z 500mg 60 Capsulas.png'),
('Omegafor PLUS 120 Cápsulas Ômega3', 'Auxilia na saúde do coração e cérebro', 55.00, 20, 'Vitafor', '2029-08-30', false, 2, 'Omegafor PLUS 120 Cápsulas Ômega3.png'),
('Zinco Quelato', 'Fortalece o sistema imunológico', 22.00, 20, 'Catarinense', '2029-08-30', false, 2, 'Zinco Quelato.png'),
('Magnésio Bisglicinato 60 Cápsulas', 'Ajuda no funcionamento muscular e nervoso', 28.00, 20, 'Nutrify', '2029-08-30', false, 2, 'Magnésio Bisglicinato 60 Cápsulas.png'),
('Ferro Quelato Vitamina C 60cps', 'Ajuda no funcionamento muscular e nervoso', 28.00, 20, 'Flora Nativa do Brasil', '2029-08-30', false, 2, 'Ferro Quelato Vitamina C 60cps.png'),
('Colageno Hidrolisado', 'Contribui para a saúde da visão e pele', 18.50, 20, 'Maxnutri', '2029-08-30', false, 2, 'Colageno Hidrolisado.png'),
('Vitamina e 400ui', 'Antioxidante que protege as células', 26.00, 20, 'Biofase', '2029-08-30', false, 2, 'Vitamina e 400ui.png'),
('Biotina 60 Cápsulas', 'Auxilia na saúde do cabelo, pele e unhas', 24.00, 20, 'Maxnutri', '2029-08-30', false, 2, 'Biotina 60 Cápsulas.png'),
('Ácido Fólico 5 Mg 120 Cápsulas', 'Essencial na formação de células e gravidez', 17.90, 20, 'Manipulação Minas Brasil', '2029-08-30', false, 2, 'Ácido Fólico 5 Mg 120 Cápsulas.png'),
('Coenzima Q10', 'Auxilia na produção de energia celular', 65.00, 20, 'Catarinense', '2029-08-30', false, 2, 'Coenzima Q10.png');







SELECT * FROM produtos;


create table pedidos (
    pedidos_id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    id_produto INT, 
    nome VARCHAR (100) NOT NULL,
    peso DECIMAL (4,2) NOT NULL,
    pagamento ENUM ('Cartão de Crédito', 'Boleto Bancário', 'PIX') NOT NULL,
    valor_total DECIMAL(10,2) NOT NULL CHECK(valor_total > 0),
    quantidade_pedido INT NOT NULL,
    data_pedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    pedido_atualizacao DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
    FOREIGN KEY (id_produto) REFERENCES Produtos(id_produto)
);


delimiter //
create trigger atualizacao
after insert on pedidos
for each row
begin
update Produtos
    set estoque_atual = estoque_atual - new.quantidade_pedido
    where produto_id = new.produto_id;
end; //

delimiter ;

insert into Produtos (nome_produto, estoque_atual, preco_unitario)
values ('Buscopam 20mg', 100, 25.50);

insert into Produtos (nome_produto, estoque_atual, preco_unitario)
values ('Dipirona monoidratada', 125, 12.00);

select * from pedidos;

select nome_produto, estoque_atual from Produtos;
drop table pedidos

