#language: pt
    Funcionalidade: Realizando um simples CRUD na classe de processo.

    Cenário de Fundo:
    Dado que o usuário está na página de processos

    Cenário: Simples POST com todos os campos preenchidos corretamente
    E o usuário digita no campo "vara" o valor "78"
    E o usuário digita no campo "numero_processo" o valor "1201313"
    E o usuário digita no campo "natureza" o valor "Engenharia"
    E o usuário digita no campo "partes" o valor "Daiane x Juliana"
    E o usuário digita no campo "urgente" o valor "S"
    E o usuário digita no campo "arbitramento" o valor "N"
    E o usuário digita no campo "assistente_social" o valor "Daiane Figueiredo"
    E o usuário digita no campo "data_entrada" o valor "2020-02-12"
    E o usuário digita no campo "data_saida" o valor "2020-02-20"
    E o usuário digita no campo "data_agendamento" o valor "2020-02-13"
    E o usuário digita no campo "status" o valor "Aguardando entrevista"
    E o usuário digita no campo "observacao" o valor "Sem Obeservações"
    Quando o usuário clicar em salvar
    Então o usuário deveria receber uma mensagem de "salvo com sucesso"
    E O usuário deve visualizar o campo "vara" com valor "78"

    Esquema do Cenário: Simples GET com todos os campos preenchidos corretamente
    E o usuário gostaria de visualizar o processo com id <id>
    Quando o usuário clicar em visualizar
    Então o usuário deveria receber uma mensagem de "<mensagem>"



        Exemplos:
        |id      |mensagem|
        |7       |sucesso|
        |289833  |não encontrado|