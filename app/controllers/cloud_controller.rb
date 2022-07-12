
class CloudController < ApplicationController
  def push_file_to_s3(filename)
    creds = Aws::Credentials.new(ENV['AWS_ACCESS_KEY_ID'], ENV['AWS_SECRET_ACCESS_KEY'])
    s3 = Aws::S3::Resource.new(region: 'us-west-1', credentials: creds)
    obj = s3.bucket('myproject').object"/some/path/#{filename}")
    obj.public_url
  end
end
