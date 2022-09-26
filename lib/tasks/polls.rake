namespace :polls do
  desc "TODO"
  task delete_30_days_old: :environment do
   Poll.where(['created_at < ?', 30.days.ago]).each do |pol| 
      if pol.is_active == true
        pol.is_active = false
        pol.save
        puts "30 Days old Poll is expired"
      end
    end
  end
end
