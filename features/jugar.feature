Feature: inicio del juego
Scenario: intentos
    Given me encuentro en la pagina para jugar
    Then veo los intentos de "0" del jugador

Scenario: numero de caracteres de la palabra
    Given me encuentro en la pagina para jugar
    Then veo el numero de caracteres de la palabra
    Then veo "-" por cada caracter de la palabra

Scenario: comenzar a jugar
    Given me encuentro en la pagina para jugar
    Then veo el campo para introducir la "letra"
    Then veo el boton "adivinar"
  
