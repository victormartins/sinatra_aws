require 'bundler/setup'
Bundler.require(:default)

require_relative './lib/aws_app'

ENV['AWS_REGION']='eu-west-2'

puts ''
puts '-' * 50
puts 'SETTINGS'.center(50)
puts "RACK_ENV=#{ENV['RACK_ENV']}"
puts "AWS_REGION=#{ENV['AWS_REGION']}"
puts '-' * 50
puts ''

# We pass the class here and let each request create
# a new instance to isolate memory per request.
run AWSApp