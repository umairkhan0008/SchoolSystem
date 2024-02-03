class Classroom < ApplicationRecord
    belongs_to :user
    has_many :teachers ,dependent: :destroy
    has_many :students ,dependent: :destroy
end
