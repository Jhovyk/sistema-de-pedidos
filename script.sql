-- Criando a tabela de produtos
CREATE TABLE produtos (
    id_produto INT PRIMARY KEY,
    nome VARCHAR(100),
    preco DECIMAL(10, 2)
);

-- Criando a tabela de pedidos
CREATE TABLE pedidos (
    id_pedido INT PRIMARY KEY,
    id_cliente INT,
    data_pedido DATE,
    id_produto INT,
    FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Inserindo dados na tabela produtos
INSERT INTO produtos (id_produto, nome, preco) VALUES (1, 'Café Expresso', 5.50);
INSERT INTO produtos (id_produto, nome, preco) VALUES (2, 'Cappuccino', 7.00);
INSERT INTO produtos (id_produto, nome, preco) VALUES (3, 'Bolo de Chocolate', 8.00);

-- Inserindo dados na tabela pedidos
INSERT INTO pedidos (id_pedido, id_cliente, data_pedido, id_produto) VALUES (1, 101, '2025-04-08', 1);
INSERT INTO pedidos (id_pedido, id_cliente, data_pedido, id_produto) VALUES (2, 102, '2025-04-08', 2);
INSERT INTO pedidos (id_pedido, id_cliente, data_pedido, id_produto) VALUES (3, 103, '2025-04-08', 3);
