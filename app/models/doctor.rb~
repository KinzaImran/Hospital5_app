class Doctor < ActiveRecord::Base
has_many :treats
has_many :patients, through: :treats
validates :d_number, numericality: true
validates :d_name, presence: true, uniqueness: true, length: { maximum: 30 }
end
