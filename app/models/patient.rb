class Patient < ActiveRecord::Base
has_many :treats
has_many :doctors, through: :treats
validates :p_name, presence: true, uniqueness: true, length: { maximum: 30 }
validates :p_age, numericality: true
validates :p_number, numericality: true
end
