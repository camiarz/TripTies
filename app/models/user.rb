class User < ApplicationRecord
  has_many :trips, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo
  
  def fullname
    "#{first_name} #{last_name}"
  end
end
