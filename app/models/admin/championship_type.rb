module Admin
  class ChampionshipType < ApplicationRecord
    validates :name, :length, presence: true
  end
end

