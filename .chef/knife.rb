current_dir = File.dirname(__FILE__)

knife[:editor] = '"C:\Program Files\Sublime Text 3\sublime_text.exe" --wait'

chelog_level             :debug
log_location             STDOUT
node_name                "eberson"
client_key               "#{current_dir}/eberson.pem"
validation_client_name   "sde-validator"
validation_key           "#{current_dir}/sde-validator.pem"
chef_server_url          "https://api.chef.io/organizations/sde"
cache_type               "BasicFile"
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright "SDE"
cookbook_license "apachev2"
cookbook_email "eberson.oliveira@gmail.com"