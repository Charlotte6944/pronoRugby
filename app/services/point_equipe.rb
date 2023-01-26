class PointEquipe

  def initialize(match, equipe1, equipe2)
    @match = match
    @equipe1 = equipe1
    @equipe2 = equipe2
  end

  def calcul_point_equipe
    point_match
    point_essais
  end

  def victoire_plus_7(equipe1, equipe2)
    equipe1.nb_points_poule += 4
    equipe2.nb_points_poule += 0
  end

  def victoire_moins_7(equipe1, equipe2)
    equipe1.nb_points_poule += 4
    equipe2.nb_points_poule += 1
  end

  def match_null(equipe1, equipe2)
    equipe1.nb_points_poule += 2
    equipe2.nb_points_poule += 2
  end

  def point_match
    if @match.score_equipe1 > @match.score_equipe2 && @match.score_equipe1 - @match.score_equipe2 > 7
      victoire_plus_7(@equipe1, @equipe2)
    elsif @match.score_equipe1 > @match.score_equipe2 && @match.score_equipe1 - @match.score_equipe2 <= 7
      victoire_moins_7(@equipe1, @equipe2)
    elsif @match.score_equipe1 < @match.score_equipe2 && @match.score_equipe2 - @match.score_equipe1 > 7
      victoire_plus_7(@equipe2, @equipe1)
    elsif @match.score_equipe1 < @match.score_equipe2 && @match.score_equipe2 - @match.score_equipe1 <= 7
      victoire_moins_7(@equipe2, @equipe1)
    elsif @match.score_equipe1 = @match.score_equipe2
      match_null(@equipe1, @equipe2)
    end
  end

  def point_essais
    if @match.essais_equipe1 >= 4
      @equipe1.nb_points_poule += 1
    end
    if @match.essais_equipe2 >= 4
      @equipe2.nb_points_poule += 1
    end
  end
end
