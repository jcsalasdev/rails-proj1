class Manga < ApplicationRecord
    validates :title, presence: true, length: { minimum: 6, maximum: 100 }
    validates :summary, presence: true, length: { minimum: 15, maximum: 350 }
end
