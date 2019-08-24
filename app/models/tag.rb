class Tag < ApplicationRecord
    has_many :taggings, dependent: :nullify
    has_many :articles, through: :taggings

    def to_s
        name
    end
end
