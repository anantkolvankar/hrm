namespace :db do
  desc "TODO"
  task populate_dummy: :environment do
  	10.times do
  		puts "Creating dummy data..."
  		last_candidate = Candidate.last
      if last_candidate
  		  new_candidate = Candidate.new(last_candidate.attributes)
  		  new_candidate.id = last_candidate.id + 1
  		  new_candidate.email = rand(50).to_s+last_candidate.email
  		  new_candidate.first_name = rand(100).to_s+last_candidate.first_name
  		  new_candidate.save
  		  puts new_candidate.email
  		  puts new_candidate.first_name
      end
  	end
  end

end
