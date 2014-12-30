# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
HrsRelease::Application.initialize!
# important line to remove the base in the json response so angular reads properly
ActiveRecord:: Base.include_root_in_json = false