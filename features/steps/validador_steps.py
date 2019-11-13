import sys
sys.path.append("...")
from validadorSenha import validaSenha
from behave import *

@given(u'que eu tenho uma senha {senha}')
def step_impl(context, senha):
    context.senha = senha


@when(u'eu valido a senha')
def step_impl(context):
    context.resposta = validaSenha(context.senha)


@then(u'devo receber {resposta}')
def step_impl(context, resposta):
    assert str(context.resposta) == resposta, '%s should be %s' % (context.senha, resposta) 

