# language: pt

Funcionalidade: validacao de senha

Esquema do Cenário: valida senha
    Dado que eu tenho uma senha <senha>
    Quando eu valido a senha
    Então devo receber <resposta>

Exemplos: senhas validas
   | senha           | resposta |
   | Teste##1        | True     |
   | Senha12$        | True     |

Exemplos: senhas invalidas
   | senha           | resposta |
   | teste$$1        | False    |
   | TESTE222        | False    |

