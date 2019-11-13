# language: pt

Funcionalidade: validacao de senha

Esquema do Cenário: valida senha
    Dado que eu tenho uma senha <senha>
    Quando eu valido a senha
    Então devo receber <resposta>

Exemplos: senhas validas
   | senha                    | resposta |
   | Teste1%$                 |   True   |
   | Senha12$                 |   True   |
   | senhaLongamaisde20$C     |   True   |

Exemplos: senhas invalidas
   | senha           | resposta |
   | teste           | False    |
   | TESTE           | False    |
   | Teste           | False    |
   | teste1          | False    |
   | Teste1          | False    |
   | Teste1%         | False    |
   | teste1%         | False    |
   | teste%          | False    |
   | testeteste1%    | False    |
   | testetesteteste | False    |

