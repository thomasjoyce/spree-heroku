Spree::Image.class_eval do
  attachment_definitions[:attachment] = (attachment_definitions[:attachment] || {}).merge({
    :storage => Rails.env.production? ? 's3' : 'filesystem',
    :s3_credentials => Rails.root.join('config', 's3.yml')
  })
end