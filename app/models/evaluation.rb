class Evaluation < ApplicationRecord
    belongs_to :student
    belongs_to :group
    has_many :responses

    validates :comment, presence: true
    validates :leadership_score, presence: true
    validates :contribution_score, presence: true
    validates :communication_score, presence: true
    validates :skills_score, presence: true
    validates :quality_score, presence: true
end
