class Equipe < ApplicationRecord

  validates :pays, presence: true, uniqueness: true
  validates :poule, presence: true, length: { is: 1 }
  validates :nb_points_poule, presence: true, numericality: { only_integer: true }
  validates :classement_poule, presence: true, numericality: { only_integer: true }

end
