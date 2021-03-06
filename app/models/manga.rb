class Manga < ApplicationRecord
    validates :title, presence: true, length: { minimum: 2, maximum: 100 }
    validates :summary, presence: true, length: { minimum: 15, maximum: 350 }
    validates :vcode, presence: true, length: { minimum: 4, maximum: 150 }
end
