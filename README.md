## How to Use
Set the following ENV variables

```
export BUCKET_NAME='some-bucket-name'

# The ones bellow don't need to be set if we add a role to an EC2 instance with S3 Access
export AWS_ACCESS_KEY_ID='some-key-id'
export AWS_SECRET_ACCESS_KEY='some-access-key'
```

Bundle install
```
bundle install
```

**To boot the app**
```
bundle exec rackup config.ru -p8080 --host 0.0.0.0
```
