class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  attachment :profile_image, destroy: false
  has_many :books
  validates :name, presence: true, length: {maximum: 10, minimum: 2}, uniqueness: true
  validates :introduction, length: {maximum: 50}

  has_many :favorites
end 