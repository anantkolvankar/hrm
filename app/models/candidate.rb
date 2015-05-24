class Candidate < ActiveRecord::Base
  belongs_to :current_company,
                :class_name => "Company",
                :foreign_key  => "current_company_id"

  belongs_to :current_branch,
                :class_name => "Branch",
                :foreign_key  => "current_branch_id"

  belongs_to :industry
  belongs_to :current_Level,
                :class_name => "Level",
                :foreign_key  => "current_Level_id"
  belongs_to :previous_company,
                :class_name => "Company",
                :foreign_key  => "previous_company_id"
  belongs_to :previous_branch,
                :class_name => "Branch",
                :foreign_key  => "previous_branch_id"
  belongs_to :previous_industry,
                :class_name => "Industry",
                :foreign_key  => "previous_industry_id"
  belongs_to :previous_level,
                :class_name => "Level",
                :foreign_key  => "previous_level_id"
 belongs_to :uploaded, polymorphic: true

 #Adding points to user who added candidate
 after_save :give_points_into_uploader

  def give_points_into_uploader
    puts "Hello"
    puts self.uploaded
    uploadar = self.uploaded
    binding.pry      
    uploadar.point = uploadar.point + 10
    uploadar.save
    
  end
  
  class << self
    def import(path, user)
binding.pry      
      begin
        i=0
        CSV.foreach(path, headers: true,:col_sep => '"') do |row|
          
          candidate = find_by_email(row["email"]) || new
    
          current_company = Company.find_by_name(row["current_company"]) || Company.create(name: row["current_company"])
          current_branch = Branch.find_by_name(row["current_branch"]) || Branch.new(name: row["current_branch"])
          current_branch.company = current_company
          current_branch.save

          industry = Industry.find_by_name(row["industry"]) || Industry.create(name: row["industry"])
          current_Level = Level.find_by_name(row["current_Level"]) || Level.create(name: row["current_Level"])
          
          previous_company = Company.find_by_name(row["previous_company"]) || Company.create(name: row["previous_company"])
          previous_branch = Branch.find_by_name(row["previous_branch"]) || Branch.new(name: row["previous_branch"])
          previous_branch.company = previous_company
          previous_branch.save

          previous_industry = Industry.find_by_name(row["previous_industry"]) || Industry.create(name: row["previous_industry"])
          previous_level = Level.find_by_name(row["previous_level"]) || Level.create(name: row["previous_level"])
          
          candidate.current_branch = current_branch
          candidate.current_company = current_company
          candidate.industry = industry
          candidate.current_Level = current_Level
          
          candidate.previous_level = previous_level
          candidate.previous_industry = previous_industry
          candidate.previous_branch = previous_branch
          candidate.previous_company = previous_company
          
          h=row.to_hash
          f=[nil,";","\t","current_company","current_branch","industry","previous_company","previous_branch","previous_industry","previous_level","current_Level"]
          f.each do |i|
            h.delete(i)
          end
          candidate.uploaded =  user
    binding.pry   
          candidate.attributes = h
          candidate.save!
          i += 1
          #candidate.create! row.to_hash
        end
        # Send mail about success of import
       # //Notifier.import_status(path,i).deliver
      rescue
        # Unable to import csv
        #Notifier.import_error(path,"Invalid file format").deliver
      end
    end
  #Used to Send import task in BackGround using delayed_job
   # handle_asynchronously :import
  end

  def self.from_csv(file, user)
    
    name = "#{Rails.root}/public/uploads/csv/csv-#{DateTime.now.to_i}.csv"
    File.open name, 'wb' do |f|
      f.write file.read
    end
    self.import(name, user)
  end

end
