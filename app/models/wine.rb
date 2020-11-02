class Wine < ApplicationRecord
    has_many :wine_strains, dependent: :destroy
    has_many :strains, through: :wine_strains
    has_many :wine_oenologists, dependent: :destroy
    has_many :oenologists, through: :wine_oenologists

    def strain_and_percentage
        @strain_and_percentage = []
        wine_strains.each do |wstrain| 
            @strain_and_percentage.push("#{wstrain.strain.name} " + "(#{wstrain.percentage} %)") 
        end
        @strain_and_percentage.sort.join(', ')
    end 

    def oenologist_and_grade
        @oenologist_and_grade = []
        wine_oenologists.each do |wine_eo| 
            @oenologist_and_grade.push("#{wine_eo.oenologist.name} " + "(#{wine_eo.grades})") 
        end
        @oenologist_and_grade.sort.join(', ')
    end 



end

