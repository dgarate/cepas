class Strain < ApplicationRecord
    has_many :wine_strains
    has_many :wines, through: :wine_strains, dependent: :destroy
    
    validates_uniqueness_of :name
    validates :name, presence: true

end
