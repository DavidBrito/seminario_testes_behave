import re

def validaSenha(senha):

  valido = True

  if len(senha) < 8:
    print('senha menor que 8 digitos')
    valido = False

  if not re.search('[0-9]', senha):
    print('senha deve ter pelo menos um numero')
    valido = False

  if not re.search('[A-Z]', senha):
    print('senha deve ter pelo menos uma letra maiuscula') 
    valido = False

  if not re.search('[a-z]', senha):
    print('senha deve ter pelo menos uma letra minuscula')
    valido = False

  if not re.search("[_@$#!%&*]", senha):
    print('senha deve ter pelo menos um dos simbolos _@$#!%&*') 
    valido = False

  return valido

def main():
  senha = 'yestes12#'

  if (validaSenha(senha)):
    print("Senha valida!")
  else:
    print("Senha invalida!")

if __name__ == '__main__':
  main()
