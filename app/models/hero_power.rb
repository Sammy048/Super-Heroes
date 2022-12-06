class HeroPower < ApplicationRecord
 belongs_to:hero
 belongs_to:power
 has_secure_pasword
 validates :strength, inclusion: {in: %w(Strong Weak Average), message: "%{value} is not a valid strength, please choose from Strong, Weak, or Average" }
end
