CREATE TABLE Pedido ( --herda de pessoa
    cpf VARCHAR2(11) NOT NULL, 
    data_admissao DATE NOT NULL, 
    renda NUMBER NOT NULL CHECK (renda >= 1100.00), --abaixo do salario mínino no nosso app não
    veiculo VARCHAR2(255) NOT NULL, 
    CONSTRAINT pedido_pk PRIMARY KEY (ID_do_pedido), 
    CONSTRAINT pedido_fk1 FOREIGN KEY (produto) REFERENCES Produto(identificação),
    CONSTRAINT pedido_fk2 FOREIGN KEY (cliente) REFERENCES Cliente(cpf_cliente),
    CONSTRAINT pedido_fk3 FOREIGN KEY (loja) REFERENCES Produto(cnpj_loja),
    CONSTRAINT pedido_fk4 FOREIGN KEY (transportadora) REFERENCES Transportadora (cnpj_transportadora)
); 
