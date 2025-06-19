-- Tabela: categoria
CREATE TABLE public.categoria (
  id serial NOT NULL,
  nome text NOT NULL,
  id_categoria_pai integer NULL,
  CONSTRAINT categoria_pkey PRIMARY KEY (id),
  CONSTRAINT categoria_id_categoria_pai_fkey FOREIGN KEY (id_categoria_pai) REFERENCES categoria (id)
) TABLESPACE pg_default;

-- Tabela: transacao
CREATE TABLE public.transacao (
  id serial NOT NULL,
  data date NULL,
  descricao text NULL,
  valor double precision NULL,
  parcela_atual integer NULL,
  parcela_total integer NULL,
  id_categoria integer NULL,
  CONSTRAINT transacao_pkey PRIMARY KEY (id),
  CONSTRAINT transacao_id_categoria_fkey FOREIGN KEY (id_categoria) REFERENCES categoria (id)
) TABLESPACE pg_default;
