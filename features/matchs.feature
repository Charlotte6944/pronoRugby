Feature: Classement dans une poule

    En fonction des matchs gagnés pour une équipe, de l écart de point avec l équipe adverse, cela calculera le nombre de point et ainsi le classement dans la poule

    Scenario: Résultat de match
     Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      |  1         |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 |
        | France   | 12       | NZ       | 3        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 4      |
        | NZ     | 0      |

    # Scenario: La France gagne contre la Nouvelle-Zélande et remporte 4 points
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France gagne contre la Nouvelle-Zélande
    #   Then la France a 4 points, la Nouvelle-Zélande a 0 points

    # Scenario: La France perd contre la Nouvelle-Zélande et remporte 4 points
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France perd contre la Nouvelle-Zélande
    #   Then la France a 0 points, la Nouvelle-Zélande a 4 points

    # Scenario: La France gagne contre la Nouvelle-Zélande de moins de 7 points, la France remporte 4 points, la Nouvelle-Zélande remporte 1 point
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France gagne contre la Nouvelle-Zélande de moins de 7 points
    #   Then la France a 4 points, la Nouvelle-Zélande a 1 points

    # Scenario: La France perd contre la Nouvelle-Zélande de moins de 7 points, la France remporte 1 point, la Nouvelle-Zélande remporte 4 points
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France perd contre la Nouvelle-Zélande de moins de 7 points
    #   Then la France a 1 points, la Nouvelle-Zélande a 4 points

    # Scenario: La France gagne contre la Nouvelle-Zélande avec un équart de 7 points, la France remporte 4 points, la Nouvelle-Zélande remporte 1 point
    # Given La France a 0 point, la Nouvelle-Zélande a 0 point
    # When la France gagne contre la Nouvelle-Zélande avec un écart de 7 points
    # Then la France a 4 points, la Nouvelle-Zélande a 1 points

    # Scenario: La France fait match null contre la Nouvelle-Zélande les 2 équipes remportent 2 points
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France fait match null contre la Nouvelle-Zélande
    #   Then la France a 2 points, la Nouvelle-Zélande a 2 points

    # Scenario: La France gagne contre la Nouvelle-Zélande et marque 2 essais, la France gagne 4 points
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France gagne contre la Nouvelle-Zélande et marque 2 essais
    #   Then la France a 4 points, la Nouvelle-Zélande a 0 points

    # Scenario: La France gagne contre la Nouvelle-Zélande et marque 4 essais, la France gagne 5 points
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France gagne contre la Nouvelle-Zélande et marque 4 essais
    #   Then la France a 5 points, la Nouvelle-Zélande a 0 points

    # Scenario: La France gagne contre la Nouvelle-Zélande. La France marque 5 essais et la Nouvelle-Zélance marque 4 essais, la France remporte 5 points et la Nouvelle-Zélande 1 point
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France gagne contre la Nouvelle-Zélande. La France marque 5 essais et la Nouvelle-Zélance marque 4 essais
    #   Then la France a 5 points, la Nouvelle-Zélande a 1 points

    # Scenario: La France fait match null contre la Nouvelle-Zélande. La France marque 5 essais et la Nouvelle-Zélance marque 4 essais, la France remporte 3 points et la Nouvelle-Zélande 3 point
    #   Given La France a 0 point, la Nouvelle-Zélande a 0 point
    #   When la France fait march null contre la Nouvelle-Zélande. La France marque 5 essais et la Nouvelle-Zélance marque 4 essais
    #   Then la France a 3 points, la Nouvelle-Zélande a 3 points
