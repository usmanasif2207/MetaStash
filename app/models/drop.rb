class Drop < ApplicationRecord
    has_one_attached :csv_file
    # validate :correct_file_type
    
    def country_name
        country_name = ISO3166::Country[country]
    end

   

#     private

#   def correct_file_type
#     if csv_file.attached? && !csv_file.content_type.in?(%w(application/csv))
#       errors.add(:csv_file, 'Must be a CSV file!')
#     end
#   end
end