class Drop < ApplicationRecord
    has_one_attached :csv_file
   
    
    def country_name
        country_name = ISO3166::Country[country]
    end

     def self.import(file)
        CSV.foreach(file, headers: true) do |row|
            Drop.create! row.to_hash
        end
    end
    #         Drop.create!(country:row['country'],province:row['province'],city:row['city'],latitude: row['latitude'].to_f, longitude: row['lng'].to_f)
    #    end
    # end
   

#     private

#   def correct_file_type
#     if csv_file.attached? && !csv_file.content_type.in?(%w(application/csv))
#       errors.add(:csv_file, 'Must be a CSV file!')
#     end
#   end
end