class SchoolStuff < ApplicationRecord
    has_one_attached :image
    has_many :school_review, -> { order "created_at DESC"}
end
