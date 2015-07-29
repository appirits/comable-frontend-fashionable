stylesheets_path = File.expand_path('../../../app/assets/stylesheets/comable', __FILE__)
Rails.application.config.assets.precompile += Dir.glob("#{stylesheets_path}/*.css").map { |f| "comable/#{File.basename(f)}" }
