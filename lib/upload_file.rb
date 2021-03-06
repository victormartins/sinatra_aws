require 'aws-sdk-s3'  # v2: require 'aws-sdk'

# https://docs.aws.amazon.com/sdk-for-ruby/v3/developer-guide/hello.html
class UploadFile
  def call(file)
    bucket_name = ENV.fetch('BUCKET_NAME')
    s3 = Aws::S3::Resource.new(region: ENV.fetch('AWS_REGION'))
    name = File.basename(file.fetch('filename'))
    obj = s3.bucket(bucket_name).object(name)
    obj.upload_file(file.fetch('tempfile'))
  end
end