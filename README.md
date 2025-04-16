# Estrutura do Banco de Dados - Cafeteria Bom Sabor

Este arquivo (`schema.sql`) contém os comandos SQL para criar a estrutura do banco de dados da Cafeteria Bom Sabor. Ele define as tabelas necessárias para armazenar informações sobre os produtos do cardápio e os pedidos dos clientes.

## Tabelas

O banco de dados é composto pelas seguintes tabelas:

### `produtos`

Armazena informações sobre cada item do cardápio.

| Coluna       | Tipo         | Atributos                      | Descrição                                 |
|--------------|--------------|---------------------------------|---------------------------------------------|
| `id_produto` | INT          | PRIMARY KEY AUTO_INCREMENT     | Identificador único do produto.           |
| `nome`       | VARCHAR(100) | NOT NULL                        | Nome do produto.                            |
| `descricao`  | TEXT         |                                 | Descrição detalhada do produto.           |
| `preco`      | DECIMAL(5, 2) | NOT NULL                        | Preço do produto.                           |

### `pedidos`

Armazena informações sobre os pedidos realizados pelos clientes.

| Coluna      | Tipo      | Atributos                   | Descrição                                      |
|-------------|-----------|-----------------------------|--------------------------------------------------|
| `id_pedido` | INT       | PRIMARY KEY AUTO_INCREMENT  | Identificador único do pedido.                 |
| `data_hora` | TIMESTAMP | DEFAULT CURRENT_TIMESTAMP | Data e hora em que o pedido foi realizado.     |
| `id_produto`| INT       | NOT NULL, FOREIGN KEY     | Identificador do produto referenciado na tabela `produtos`. |
| `quantidade`| INT       | NOT NULL                    | Quantidade do produto no pedido.               |
| `observacoes`| TEXT      |                             | Observações adicionais do cliente para o pedido. |

## Como Utilizar Este Arquivo

Este arquivo `.sql` pode ser executado em qualquer sistema de gerenciamento de banco de dados (SGBD) compatível com SQL (como MySQL, PostgreSQL, SQLite, etc.).

**Passos para executar o script:**

1.  **Certifique-se de ter um SGBD instalado e em execução.**
2.  **Utilize uma ferramenta de linha de comando ou uma interface gráfica do seu SGBD.**
3.  **Conecte-se ao seu servidor de banco de dados.**
4.  **Execute o arquivo `schema.sql`.** A forma exata de fazer isso varia dependendo da ferramenta, mas geralmente envolve um comando como `source schema.sql` (no MySQL) ou a opção de "executar script" na interface gráfica.

Após a execução bem-sucedida, as tabelas `produtos` e `pedidos` serão criadas no seu banco de dados, e os registros de exemplo serão inseridos.

## Versionamento

Este arquivo é mantido sob controle de versão utilizando o Git. As alterações na estrutura do banco de dados serão rastreadas e documentadas através de commits.

Para visualizar o histórico de alterações, utilize o comando `git log` no diretório do projeto.

## Contribuições

Quaisquer sugestões de melhorias para a estrutura do banco de dados são bem-vindas. Por favor, abra uma issue ou envie um pull request com suas propostas.
