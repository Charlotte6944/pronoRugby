Given('La France a {int} point, la Nouvelle-Zélande a {int} point') do |int, int2|
  @france = Equipe.new(pays: "France", poule: "A", nb_points_poule: 0, classement_poule: 1)
  @nz = Equipe.new(pays: "Nouvelle-Zélande", poule: "A", nb_points_poule: 0, classement_poule: 2)
end

When('la France gagne contre la Nouvelle-Zélande') do
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 10, score_equipe2: 0, date: "2021-09-26", heure: "15:00:00", phase: "poule")
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France perd contre la Nouvelle-Zélande') do
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 0, score_equipe2: 10, date: "2021-09-26", heure: "15:00:00", phase: "poule")
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

Then('la France a {int} points, la Nouvelle-Zélande a {int} points') do |int, int2|
  expect(@france.nb_points_poule).to eq(int)
  expect(@nz.nb_points_poule).to eq(int2)
end

When('la France gagne contre la Nouvelle-Zélande de moins de {int} points') do |int|
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 10, score_equipe2: 8, date: "2021-09-26", heure: "15:00:00", phase: "poule")
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France perd contre la Nouvelle-Zélande de moins de {int} points') do |int|
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 8, score_equipe2: 10, date: "2021-09-26", heure: "15:00:00", phase: "poule")
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France gagne contre la Nouvelle-Zélande avec un écart de {int} points') do |int|
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 10, score_equipe2: 3, date: "2021-09-26", heure: "15:00:00", phase: "poule")
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France fait match null contre la Nouvelle-Zélande') do
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 3, score_equipe2: 3, date: "2021-09-26", heure: "15:00:00", phase: "poule")
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France gagne contre la Nouvelle-Zélande et marque {int} essais') do |int|
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 20, score_equipe2: 1, date: "2021-09-26", heure: "15:00:00", phase: "poule", essais_equipe1: int, essais_equipe2: 0)
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France gagne contre la Nouvelle-Zélande. La France marque {int} essais et la Nouvelle-Zélance marque {int} essais') do |int, int2|
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 30, score_equipe2: 20, date: "2021-09-26", heure: "15:00:00", phase: "poule", essais_equipe1: int, essais_equipe2: int2)
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end

When('la France fait march null contre la Nouvelle-Zélande. La France marque {int} essais et la Nouvelle-Zélance marque {int} essais') do |int, int2|
  match = Match.new(equipe1_id: @france.id, equipe2_id: @nz.id, score_equipe1: 30, score_equipe2: 30, date: "2021-09-26", heure: "15:00:00", phase: "poule", essais_equipe1: int, essais_equipe2: int2)
  PointEquipe.new(match, @france, @nz).calcul_point_equipe
end