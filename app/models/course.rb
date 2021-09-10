class Course < ApplicationRecord
    belongs_to :instructor
    has_and_belongs_to_many :students
    has_many :groups, :dependent => :delete_all

    validates :course_name, presence: true
    validates :semester, presence: true
end
