desc "Remove all files from the build directory"
task :clean do
  sh "rm -rf ./build"
end

desc "Compile the sitepress site"
task :compile do
  sh "yarn run build:css"
  sh "yarn run build:js"
  sh "bundle exec sitepress compile"
end

task default: %w[clean compile]
