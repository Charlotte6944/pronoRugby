Given('les équipes ont les points suivants:') do |table|
  @equipes = []
  table.hashes.each do |equipe|
    @equipes << Equipe.new(pays: equipe[:Pays], nb_points_poule: equipe[:Points], poule: "A", classement_poule: equipe[:Classement])
  end
end

When('le résultat du match est:') do |table|
  table.hashes.each do |match|
    equipe1 = @equipes.find{|e| e.pays == match[:Equipe_1]}
    equipe2 = @equipes.find{|e| e.pays == match[:Equipe_2]}
    match_realise = Match.new(equipe1_id: @equipes.find{|e| e.pays == match[:Equipe_1]}.id,
      equipe2_id: @equipes.find{|e| e.pays == match[:Equipe_2]}.id, score_equipe1: match[:Points_1],
      score_equipe2: match[:Points_2], date: "2021-09-26", heure: "15:00:00", phase: "poule",
      essais_equipe1: match[:Essais_1], essais_equipe2: match[:Essais_2])
    PointEquipe.new(match_realise, equipe1, equipe2).calcul_point_equipe
  end
end

Then('les équipes remportent les points suivants:') do |table|
  table.hashes.each do |equipe|
    expect(@equipes.find{|e| e.pays == equipe[:Equipe]}.nb_points_poule).to eq(equipe[:Points].to_i)
  end
end
