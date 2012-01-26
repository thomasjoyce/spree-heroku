Spree::Taxon.class_eval do
  attachment_definitions[:icon] = (attachment_definitions[:icon] || {}).merge({
    :storage => Rails.env.production? ? 's3' : 'filesystem',
    :s3_credentials => Rails.root.join('config', 's3.yml')  })
end