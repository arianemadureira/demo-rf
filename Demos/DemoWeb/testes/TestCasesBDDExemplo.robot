*** Settings ***
Resource         ../resources/ResourceBDD.robot
Suite Teardown   Fechar Navegador

*** Test Cases ***
Cenário 01: Pesquisar postagem Season Premiere
    Given que esteja na tela HOME do blog robotizando testes
    When pesquisar pela palavra "introdução ao robot framework"
    Then a postagem "Season Premiere: Introdução ao Robot Framework" deve ser listada no resultado da pesquisa

Cenário 02: Ler postagem Season Premiere
    Given que esteja na tela de resultado da pesquisa pela postagem "Season Premiere: Introdução ao Robot Framework"
    When clicar no link da postagem
    Then a tela da postagem "Season Premiere: Introdução ao Robot Framework" deve ser mostrada
