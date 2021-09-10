class Project < ApplicationRecord
    #has_many :evaluations, :dependent => :delete_all
    #has_and_belongs_to_many :groups

    validates :project_name, presence: true
end
