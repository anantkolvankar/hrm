class Notifier < ActionMailer::Base
    default from: 'ani.kolvankar@gmail.com',to: 'ani.kolvankar@gmail.com'#,
          #return_path: 'ani.kolvankar@gmail.com'

  def import_status(csv_file,total_import_count)
  	@csv_date = csv_file
  	@total_import_count = total_import_count
  	 attachments.inline['logoresize.jpg'] = File.read("#{Rails.root}/public/logoresize.jpg")
      mail()
  end

  def import_error(file,msg)
  	@file = file
  	@msg=msg
  	 attachments.inline['logoresize.jpg'] = File.read("#{Rails.root}/public/logoresize.jpg")
  	mail()
  end
end
