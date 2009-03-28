# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_inb345demo_session',
  :secret      => '9fcd1dcd20a12dd9e1717971c28cc50ffeb0dd402d0ebe6d680e4b7e8b26e8c4776fcfdde233e8a24d1a7f7190ecc4df9775a333f72fab12f857245e07ee2a96'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
