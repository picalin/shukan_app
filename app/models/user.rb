class User < ApplicationRecord
  has_many :shukans, -> { order("done ASC, position ASC") }, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable # ←confirmableを追加
end
