task :start do
  sh 'jekyll', 'serve', '-s', './docs'
end

task :build do
  sh 'jekyll', 'build', '-s', './docs'
end

task :deploy do
  sh './bin/deploy.sh'
end
