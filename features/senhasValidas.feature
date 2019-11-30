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
   | senhaLonga222$C          |   True   |

Exemplos: senhas invalidas
   | senha               | resposta |
   | teste#2             | False    |
   | SENHATESTE          | False    |
   | Test                | False    |
   | teste1212           | False    |
   | Teste1212           | False    |