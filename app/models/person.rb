class Person < ActiveRecord::Base
  validates :name,  presence: true,
                    length: {minimum: 2}
  validates :city,  presence: true,
                    length: {minimum: 4}
  validates :country, presence: true,
                      length: {minimum: 4}
  validates :weight,  presence: true,
                      length: {minimum: 2, maximum: 3}
  validates :height,  presence: true,
                      length: {minimum: 2, maximum: 3}
end
