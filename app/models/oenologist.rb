class Oenologist < ApplicationRecord
    has_many :oenologist_magazines, dependent: :destroy
    has_many :magazines, through: :oenologist_magazines
    has_many :wine_oenologists, dependent: :destroy
    has_many :wines, through: :wine_oenologists
end
