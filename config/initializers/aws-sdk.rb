require 'aws-sdk'
require 'aws-sdk-resources'
AWS.config(
	access_key_id: ENV["aws_key_id"],
	secret_access_key: ENV["aws_secret_key"]
)