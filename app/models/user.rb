class User < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
validates :name, :gender, :date_of_birth, :profile_picture, presence: true

has_many :lectures, dependent: :destroy
has_many :comments, dependent: :destroy


end
