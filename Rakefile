# copied from http://github.com/josh/dotfiles/raw/master/Rakefile
task :default => :install

desc "Install the dot files into user's home directory"
task :install do
  manifest.each do |file|
    source, file = file, File.basename(file)

    puts "linking ~/.#{file}"
    system %Q{unlink "$HOME/.#{file}"}
    system %Q{ln -s "$PWD/#{source}" "$HOME/.#{file}"}
  end

  Rake::Task[:fetch_plugins].invoke
end

desc "List untracked dot files"
task :untracked do
  sh "cd $HOME && find .* ! -type l -maxdepth 0"
end

desc "Download git submodules"
task :fetch_plugins do
  puts "Fetching plugins"
  system %Q{git submodule update --init}
end

desc "Update all installed plugins"
task :update do
  puts "Updating plugins"
  system "git submodule foreach 'git checkout master; git pull'"
end

desc "Generate helptags"
task :helptags do
  puts "Generating helptags"
  sh "vim -e -c 'Helptags|q' 2>&1 /dev/null"
end


def manifest
  %w[vimrc gvimrc].sort
end
