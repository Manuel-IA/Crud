class Country < ApplicationRecord
    has_many :department
    has_many :client
end
