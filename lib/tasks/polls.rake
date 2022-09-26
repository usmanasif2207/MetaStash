namespace :polls do
  desc "TODO"
  task delete_30_days_old: :environment do
    @poll = Poll.where(['created_at < ?', 30.miutes.ago])
    if @poll[0].is_active == true
        @poll[0].is_active = false
        puts "30 Days old Poll is expired"
    end
  end
end
