Feature: inicio del juego
Scenario: intentos
    Given me encuentro en la pagina para jugar
    Then veo los intentos de "0" del jugador

Scenario: numero de caracteres de la palabra
    Given me encuentro en la pagina para jugar
    Then veo el numero de caracteres de la palabra
    Then veo "-" por cada caracter de la palabra

Scenario: campos para empezar a jugar
    Given me encuentro en la pagina para jugar
    Then veo el campo para introducir la "letra"
    Then veo el boton "adivinar"

Scenario: empezar a jugar
    Given me encuentro en la pagina para jugar
    When cuando lleno el campo "letra" con el valor de "a"
    Then hago click en el boton "adivinar" 
  
Scenario: validar jugadas
    Given me encuentro en la pagina para jugar
    When si la "letra" ingresada corresponde a la "palabra"
    Then reemplazar "-" por la "letra" dentro de la "palabra" 
