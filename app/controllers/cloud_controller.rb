class CloudController < ApplicationController
  def push_file_to_s3(filename)
    aws_access_key_id = "AKIAIOSFODNN7NOTREAL"
    aws_secret_access_key = "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"
    creds = Aws::Credentials.new(aws_access_key_id, aws_secret_access_key)
    s3 = Aws::S3::Resource.new(region: 'us-west-1', credentials: creds)
    obj = s3.bucket('myproject').object"/some/path/#{filename}")
    obj.public_url
  end
end
