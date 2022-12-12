desc "Remove all files from the build directory"
task :clean do
  sh "rm -rf ./build"
end

desc "Compile the sitepress site"
task :compile do
  ENV["NODE_ENV"] = "production"
  sh "yarn run build:css"
  sh "yarn run build:js"

  sh "bundle exec sitepress compile"
end

desc "Deploy to dev.masilotti.com"
task deploy: [:clean, :compile] do
  sh "rsync rsync -rtzq --progress build/ joemaz@masilotti.com:dev.masilotti.com"
end

task default: :deploy
