if Equipe.all.count == 0

  Equipe.create(pays: "Nouvelle-Zélande", poule: "A", nb_points_poule: 0, classement_poule: 1)
  Equipe.create(pays: "France", poule: "A", nb_points_poule: 0, classement_poule: 2)
  Equipe.create(pays: "Italie", poule: "A", nb_points_poule: 0, classement_poule: 3)
  Equipe.create(pays: "Uruguay", poule: "A", nb_points_poule: 0, classement_poule: 4)
  Equipe.create(pays: "Namibie", poule: "A", nb_points_poule: 0, classement_poule: 5)

  Equipe.create(pays: "Afrique du Sud", poule: "B", nb_points_poule: 0, classement_poule: 1)
  Equipe.create(pays: "Irlande", poule: "B", nb_points_poule: 0, classement_poule: 2)
  Equipe.create(pays: "Ecosse", poule: "B", nb_points_poule: 0, classement_poule: 3)
  Equipe.create(pays: "Tonga", poule: "B", nb_points_poule: 0, classement_poule: 4)
  Equipe.create(pays: "Roumanie", poule: "B", nb_points_poule: 0, classement_poule: 5)

  Equipe.create(pays: "Pays de Galles", poule: "C", nb_points_poule: 0, classement_poule: 1)
  Equipe.create(pays: "Australie", poule: "C", nb_points_poule: 0, classement_poule: 2)
  Equipe.create(pays: "Fidji", poule: "C", nb_points_poule: 0, classement_poule: 3)
  Equipe.create(pays: "Géorgie", poule: "C", nb_points_poule: 0, classement_poule: 4)
  Equipe.create(pays: "Portugal", poule: "C", nb_points_poule: 0, classement_poule: 5)

  Equipe.create(pays: "Angleterre", poule: "D", nb_points_poule: 0, classement_poule: 1)
  Equipe.create(pays: "Japon", poule: "D", nb_points_poule: 0, classement_poule: 2)
  Equipe.create(pays: "Argentine", poule: "D", nb_points_poule: 0, classement_poule: 3)
  Equipe.create(pays: "Samoa", poule: "D", nb_points_poule: 0, classement_poule: 4)
  Equipe.create(pays: "Chili", poule: "D", nb_points_poule: 0, classement_poule: 5)

end

if Match.all.count == 0
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "France").id, equipe2_id: Equipe.find_by(pays: "Nouvelle-Zélande").id, date: "2023-09-08", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Italie").id, equipe2_id: Equipe.find_by(pays: "Namibie").id, date: "2023-09-09", heure: "13:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Irlande").id, equipe2_id: Equipe.find_by(pays: "Roumanie").id, date: "2023-09-09", heure: "15:30", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Australie").id, equipe2_id: Equipe.find_by(pays: "Géorgie").id, date: "2023-09-09", heure: "18:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Angleterre").id, equipe2_id: Equipe.find_by(pays: "Argentine").id, date: "2023-09-09", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Japon").id, equipe2_id: Equipe.find_by(pays: "Chili").id, date: "2023-09-10", heure: "13:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Afrique du Sud").id, equipe2_id: Equipe.find_by(pays: "Ecosse").id, date: "2023-09-10", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Pays de Galles").id, equipe2_id: Equipe.find_by(pays: "Fidji").id, date: "2023-09-10", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "France").id, equipe2_id: Equipe.find_by(pays: "Uruguay").id, date: "2023-09-14", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Nouvelle-Zélande").id, equipe2_id: Equipe.find_by(pays: "Namibie").id, date: "2023-09-15", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Samoa").id, equipe2_id: Equipe.find_by(pays: "Chili").id, date: "2023-09-16", heure: "15:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Pays de Galles").id, equipe2_id: Equipe.find_by(pays: "Portugal").id, date: "2023-09-16", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Irlande").id, equipe2_id: Equipe.find_by(pays: "Tonga").id, date: "2023-09-16", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Afrique du Sud").id, equipe2_id: Equipe.find_by(pays: "Roumanie").id, date: "2023-09-17", heure: "15:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Australie").id, equipe2_id: Equipe.find_by(pays: "Fidji").id, date: "2023-09-17", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Angleterre").id, equipe2_id: Equipe.find_by(pays: "Japon").id, date: "2023-09-17", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Italie").id, equipe2_id: Equipe.find_by(pays: "Uruguay").id, date: "2023-09-20", heure: "17:45", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "France").id, equipe2_id: Equipe.find_by(pays: "Namibie").id, date: "2023-09-21", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Argentine").id, equipe2_id: Equipe.find_by(pays: "Samoa").id, date: "2023-09-22", heure: "17:45", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Géorgie").id, equipe2_id: Equipe.find_by(pays: "Portugal").id, date: "2023-09-23", heure: "14:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Angleterre").id, equipe2_id: Equipe.find_by(pays: "Chili").id, date: "2023-09-23", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Afrique du Sud").id, equipe2_id: Equipe.find_by(pays: "Irlande").id, date: "2023-09-23", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Ecosse").id, equipe2_id: Equipe.find_by(pays: "Tonga").id, date: "2023-09-24", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Pays de Galles").id, equipe2_id: Equipe.find_by(pays: "Australie").id, date: "2023-09-24", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Uruguay").id, equipe2_id: Equipe.find_by(pays: "Namibie").id, date: "2023-09-27", heure: "17:45", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Japon").id, equipe2_id: Equipe.find_by(pays: "Samoa").id, date: "2023-09-28", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Nouvelle-Zélande").id, equipe2_id: Equipe.find_by(pays: "Italie").id, date: "2023-09-29", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Argentine").id, equipe2_id: Equipe.find_by(pays: "Chili").id, date: "2023-09-30", heure: "15:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Fidji").id, equipe2_id: Equipe.find_by(pays: "Géorgie").id, date: "2023-09-30", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Ecosse").id, equipe2_id: Equipe.find_by(pays: "Roumanie").id, date: "2023-09-30", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Australie").id, equipe2_id: Equipe.find_by(pays: "Portugal").id, date: "2023-10-01", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Afrique du Sud").id, equipe2_id: Equipe.find_by(pays: "Tonga").id, date: "2023-10-01", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Nouvelle-Zélande").id, equipe2_id: Equipe.find_by(pays: "Uruguay").id, date: "2023-10-05", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "France").id, equipe2_id: Equipe.find_by(pays: "Italie").id, date: "2023-10-06", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Pays de Galles").id, equipe2_id: Equipe.find_by(pays: "Géorgie").id, date: "2023-10-07", heure: "15:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Angleterre").id, equipe2_id: Equipe.find_by(pays: "Samoa").id, date: "2023-10-07", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Irlande").id, equipe2_id: Equipe.find_by(pays: "Ecosse").id, date: "2023-10-07", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Japon").id, equipe2_id: Equipe.find_by(pays: "Argentine").id, date: "2023-10-08", heure: "13:00", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Tonga").id, equipe2_id: Equipe.find_by(pays: "Roumanie").id, date: "2023-10-08", heure: "17:45", score_equipe1: 0, score_equipe2: 0)
  Match.create(phase: "poule", equipe1_id: Equipe.find_by(pays: "Fidji").id, equipe2_id: Equipe.find_by(pays: "Portugal").id, date: "2023-10-08", heure: "21:00", score_equipe1: 0, score_equipe2: 0)

end
