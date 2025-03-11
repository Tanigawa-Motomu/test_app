class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    has_many :post_content, dependent: :destroy

    validates :name, presence: true
    validates :birth_day, presence: true
    validates :gender, presence: true
    validates :blood_type, presence: true

    enum denger: {male: 0, female: 1, others: 2}
    enum blood_type: {type_a: 0, type_b: 1, type_o: 2, type_ab: 3, unknown: 4}
end
