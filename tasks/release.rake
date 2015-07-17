root    = File.expand_path('../../', __FILE__)
version = File.read(File.expand_path('../../COMABLE_VERSION', __FILE__)).strip
tag     = "v#{version}"

directory 'pkg'

namespace :release do
  gemname = 'comable-frontend-fashionable'
  gem     = "#{gemname}-#{version}.gem"
  gemspec = "#{gemname}.gemspec"

  task :clean do
    rm_f "pkg/#{gem}"
  end

  task :build => :pkg do
    sh "gem build #{gemspec} && mv #{gem} #{root}/pkg/"
  end

  task :install => :build do
    sh "gem install pkg/#{gem}"
  end

  task :push => :build do
    sh 'git push'
    sh "gem push pkg/#{gem}"
  end

  task :commit do
    File.open('pkg/commit_message.txt', 'w') do |f|
      f.puts "# Bump to #{version}\n"
      f.puts
      f.puts '# UNCOMMENT THE LINE ABOVE TO APPROVE THIS COMMIT'
    end

    sh 'git add . && git commit --verbose --template=pkg/commit_message.txt'
    rm_f 'pkg/commit_message.txt'
  end

  task :tag do
    sh "git tag -m '#{tag} release' #{tag}"
    sh 'git push --tags'
  end

  task :release => %w(clean build commit tag push)
end
