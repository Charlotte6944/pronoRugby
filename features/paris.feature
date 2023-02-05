Feature: Pari des joueurs

    En fonction des paris des joueurs, ceux-ci marquent des points et on a un classement de tous les joueurs en fonction de leur point

    Scenario: Paul pari sur la victoire de la France dans le match France/Nouvelle-Zélande en match de poule, la France gagne, Paul marque 3 points
      Given Paul pari sur la victoire de la France
      And la France gagne
      When Paul marque 3 points
      Then Paul est classé 1er
