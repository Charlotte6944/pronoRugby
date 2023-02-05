Feature: Classement dans une poule

    En fonction des matchs gagnés pour une équipe, de l écart de point avec l équipe adverse, cela calculera le nombre de point et ainsi le classement dans la poule

    Scenario: La France gagne contre la Nouvelle-Zélande et remporte 4 points
     Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 12       | NZ       | 3        | 0        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 4      |
        | NZ     | 0      |

    Scenario: La France perd contre la Nouvelle-Zélande et remporte 4 points
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 3        | NZ       | 12       | 0        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 0      |
        | NZ     | 4      |

    Scenario: La France gagne contre la Nouvelle-Zélande de moins de 7 points et remporte 4 points, la Nouvelle-Zélande remporte 1 point
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 12       | NZ       | 10       | 0        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 4      |
        | NZ     | 1      |

    Scenario: La France perd contre la Nouvelle-Zélande de moins de 7 points, la France remporte 1 point, la Nouvelle-Zélande remporte 4 points
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 10       | NZ       | 12       | 0        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 1      |
        | NZ     | 4      |

    Scenario: La France fait match null contre la Nouvelle-Zélande les 2 équipes remportent 2 points
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 10       | NZ       | 10       | 0        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 2      |
        | NZ     | 2      |

    Scenario: La France gagne contre la Nouvelle-Zélande et marque 2 essais, la France gagne 4 points
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 18       | NZ       | 10       | 2        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 4      |
        | NZ     | 0      |

    Scenario: La France gagne contre la Nouvelle-Zélande et marque 4 essais, la France gagne 5 points
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 18       | NZ       | 10       | 4        | 0        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 5      |
        | NZ     | 0      |

    Scenario: La France gagne contre la Nouvelle-Zélande. La France marque 5 essais et la Nouvelle-Zélance marque 4 essais, la France remporte 5 points et la Nouvelle-Zélande 1 point
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 18       | NZ       | 10       | 5        | 4        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 5      |
        | NZ     | 1      |

    Scenario: La France fait match null contre la Nouvelle-Zélande. La France marque 5 essais et la Nouvelle-Zélance marque 4 essais, la France remporte 3 points et la Nouvelle-Zélande 3 point
      Given les équipes ont les points suivants:
        | Pays   | Points | Classement |
        | France | 0      | 1          |
        | NZ     | 0      | 2          |
      When le résultat du match est:
        | Equipe_1 | Points_1 | Equipe_2 | Points_2 | Essais_1 | Essais_2 |
        | France   | 30       | NZ       | 30       | 5        | 4        |
      Then les équipes remportent les points suivants:
        | Equipe | Points |
        | France | 3      |
        | NZ     | 3      |
