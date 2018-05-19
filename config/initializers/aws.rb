Aws.config.update({
  region: 'us-east-1',
  credentials: Aws::Credentials.new(Rails.application.credentials.aws_key, Rails.application.credentials.aws_secret)
})

AWS_BUCKET = Aws::S3::Resource.new.bucket("onebitflix")