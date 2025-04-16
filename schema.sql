-- Criação da tabela produtos
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    preco DECIMAL(5, 2) NOT NULL
);

-- Inserção de registros na tabela produtos
INSERT INTO produtos (nome, descricao, preco) VALUES
('Café Espresso', 'Um shot concentrado de café.', 5.00),
('Cappuccino', 'Espresso com leite vaporizado e espuma.', 8.00),
('Pão de Queijo (5 unidades)', 'Quentinhos e saborosos pães de queijo.', 6.00);

-- Criação da tabela pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_hora TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_produto INT NOT NULL,
    quantidade INT NOT NULL,
    observacoes TEXT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserção de registros na tabela pedidos
INSERT INTO pedidos (id_produto, quantidade) VALUES
(1, 1), -- Um Café Espresso
(2, 2), -- Dois Cappuccinos
(3, 1); -- Uma porção de Pão de Queijo

INSERT INTO pedidos (id_produto, quantidade, observacoes) VALUES
(1, 1, 'Sem açúcar, por favor.'),
(2, 1, 'Com canela.'),
(3, 2, 'Quentinhos!');