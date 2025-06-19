-- Categorias principais
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Alimentacao', NULL),
('Transporte', NULL),
('Lazer', NULL),
('Saude', NULL),
('Casa', NULL),
('Assinaturas / Servicos', NULL),
('Roupas / Calcados', NULL),
('Presentes / Variados', NULL),
('Educacao', NULL),
('Cuidado Pessoal', NULL),
('Lojas Online', NULL),
('Outros', NULL);

-- Subcategorias de Alimentação
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Supermercado', 1),
('Hortifruti', 1),
('Restaurantes', 1),
('Padaria', 1),
('Doces e Sorvetes', 1),
('Delivery', 1),
('Lanches', 1);

-- Subcategorias de Transporte
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Combustivel / Posto', 2),
('Apps de Transporte', 2),
('Estacionamento / Pedagio', 2),
('Manutençao', 2),
('Aluguel de Carro', 2);

-- Subcategorias de Lazer
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Cinema / Streaming', 3),
('Bares / Baladas', 3),
('Viagens / Turismo', 3),
('Parques / Passeios', 3);

-- Subcategorias de Saúde
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Farmacia', 4),
('Clinicas', 4),
('Exames / Consultas', 4),
('Academia', 4),
('Jiujitsu', 4);

-- Subcategorias de Casa
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Contas', 5),
('Moveis / Decoracao', 5),
('Material de construcao', 5);

-- Subcategorias de Assinaturas / Serviços
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Apps / Nuvem', 6),
('Streaming', 6),
('Servicos Online', 6);

-- Subcategorias de Roupas / Calçados
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Moda Masculina', 7),
('Moda Feminina', 7),
('Moda Infantil', 7),
('Uniforme', 7);

-- Subcategorias de Presentes / Variados
INSERT INTO categoria (nome, id_categoria_pai) VALUES
('Presentes', 8),
('Cosmeticos / Perfumaria', 8),
('Bijuterias / Acessorios', 8),
('Papelaria', 8);