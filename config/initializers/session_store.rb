# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_Railshu_session',
  :secret      => '67e5eb1e899a273a54576aa25f0c0d560b2101d4cd37df41b4b9ff3ddd5c4dbe983219e0708a14e227e5d2064dc873e7b9a4a52e0ccee661bb912c60e51425e7'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
