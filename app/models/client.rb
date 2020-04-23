class Client < ApplicationRecord
    has_one_attached :avatar
    validates :name, presence: true 
    paginates_per 5
    def self.search(search)
        if search
            where ['name LIKE ?', "%#{search}%"]
        else
            all
        end
    end
end
