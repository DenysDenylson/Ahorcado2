Feature: Bienvenida
  
  Scenario: Pagina de inicio
      Given Me encuentro en la pagina principal
      Then Veo el mensaje de "Bienvenido"  

  Scenario: Pagina de inicio la palabra secreta
    Given Me encuentro en la pagina principal
    Then veo el campo para "palabra" 
    And veo el boton "jugar"

  Scenario: Pagina de inicio ingreso palabra secreta
    Given Me encuentro en la pagina principal
    When cuando lleno el campo "palabra" con "contrasenia"
    Then hago click en el boton "jugar" 
    And veo el mensaje "jugar ahorcado"

  # Scenario: Pagina de inicio nombre de los jugadores
  #   Given Me encuentro en la pagina principal
  #   Then veo el campo para "jugador1" 
  #   And  veo el campo prara "jugador2"
  #   And veo el boton "jugar"

  # Scenario: Pagina de inicio ingreso nombre de los jugadores
  #   Given Me encuentro en la pagina principal
  #   When cuando lleno el campo "jugador1" con "denys"
  #   And cuando lleno el campo "jugador2" con "denylson"
  #   Then hago click en el boton "jugar" 
  #   And veo el mensaje "denys vs denylson"

   


 
  

