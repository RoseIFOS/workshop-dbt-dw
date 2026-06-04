with source as (
   select * from {{ref('cadastros')}}
),

transformed as (
   select
      -- Chaves
      id as id_cliente,
      cpf,

      -- Dados Pessoais
      nome,      
      data_nascimento as dt_nascimento,
      genero,

      -- Dados de Contato
      email,
      telefone,

      -- Dados de Localizacao
      pais,
      cidade,
      estado,
      cep,

      -- Datas
      data_cadastro as dt_cadastro,
      current_timestamp as etl_inserted_at
   from source
)

select * from transformed