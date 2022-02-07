# frozen_string_literal: true
module Queries
  class FetchPets < Queries::BaseQuery
    type [Types::PetType], null: false

    def resolve
      Pet.all.order(created_at: :desc)
    end
  end
end
