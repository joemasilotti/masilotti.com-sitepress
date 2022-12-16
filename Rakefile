desc "Remove all files from the build directory"
task :clean do
  sh "rm -rf ./build"
end

desc "Compile the sitepress site"
task :compile do
  ENV["NODE_ENV"] = "production"
  sh "yarn run build"
  sh "bundle exec sitepress compile"
  sh "cp -r public/. build"
end

desc "Deploy to dev.masilotti.com"
task deploy: [:clean, :compile] do
  sh "rsync -rtzq --progress --del build/ joemaz@masilotti.com:dev.masilotti.com"
end

task default: :deploy
