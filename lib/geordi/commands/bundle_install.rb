desc 'bundle-install', 'Run bundle install if required', :hide => true
def bundle_install
  if File.exists?('Gemfile') and !system('bundle check > /dev/null 2>&1')
    announce 'Bundling'
    Util.system! 'bundle install'
  end
end
