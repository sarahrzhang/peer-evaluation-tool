class Group < ApplicationRecord
    belongs_to :course
    has_many :evaluations, :dependent => :delete_all
    has_and_belongs_to_many :students
    has_and_belongs_to_many :projects

    validates :group_name, presence: true
end
