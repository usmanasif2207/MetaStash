class Poll < ApplicationRecord
    belongs_to :ngo_id_1, class_name: "Ngo" 
    belongs_to :ngo_id_3, class_name: "Ngo" 
    belongs_to :ngo_id_4, class_name: "Ngo" 
end
