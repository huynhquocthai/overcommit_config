require "erb"
require "yaml"
class OvercommitConfig
  # Generate popular config for Overcommit.
  # Run *overcommit_config* to generate .overcommit.yml file.
  def generate_config
    puts "Generating overcommit config ..."
    file_name = ".overcommit.yml"
    config_file = File.expand_path File.dirname(__FILE__) + '/.overcommit_popular_config.yml'
    config = YAML.safe_load(ERB.new(File.read(config_file)).result)
    File.open(file_name, "w") { |f| f << config.to_yaml }
    generate_rubo_script
    install_overcommit
    update_overcommit_config
  end

  def generate_rubo_script
    puts "Generating overcommit rubocop executable script ..."
    file_name = "./bin/custom-rubocop-script"
    script_file = File.expand_path File.dirname(__FILE__) + '/custom-rubocop-script'
    config = ERB.new(File.read(script_file)).result
    File.open(file_name, "w") { |f| f << config }
    FileUtils.chmod("a+x", file_name)
  end

  # Update overcommit config
  def update_overcommit_config
    exec 'overcommit --sign' rescue nil
  end

  # Install Overcommit hooks in current app
  def install_overcommit
    exec 'overcommit --install' rescue nil
  end
end