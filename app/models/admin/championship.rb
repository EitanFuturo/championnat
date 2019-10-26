module Admin
  class Championship < ApplicationRecord
    belongs_to :championship_type

    validates :start_date, :championship_type, presence: true

    def length
      championship_type.length
    end

    def championship_type_name
      championship_type.name
    end

  end
end

