class Client < ApplicationRecord
    has_one_attached :avatar
    validates :name, :identificationType_id, :country_id, :department_id, :city_id, presence: true 
    paginates_per 10
    def self.search(search)
        if search
            where ['name LIKE ?', "%#{search}%"]
        else
            all
        end
    end
end
