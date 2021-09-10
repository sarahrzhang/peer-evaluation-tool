class Student < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  EMAIL_PATTERN = /\A(.+)@(.+)\z/
  validates :email, presence: true,  format: { with: EMAIL_PATTERN }, uniqueness: true
  before_save { self.email = email.downcase }

  has_and_belongs_to_many :groups
  has_and_belongs_to_many :courses
  
  has_many :evaluations, :dependent => :delete_all

  validates :first_name, presence: true
  validates :last_name, presence: true
end
