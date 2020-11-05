CarrierWave.configure do |config|
    config.fog_credentials = {
      provider:                         'Google',
      google_storage_access_key_id:     'GOOG5H4VADAPUTCGHWTY2AV5',
      google_storage_secret_access_key: '1VfaXKipA2JMq5I8X4cT37K9av5OnfBsG0W1sXfv'
    }
    config.fog_directory = 'name_of_directory'
end