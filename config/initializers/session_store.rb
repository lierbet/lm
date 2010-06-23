# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lm_session',
  :secret      => '5947dd4f6885e0c718f6ddf94035e9e613a0f8fa84ef5e99d6c53a1ef7f65518caf80329b88db3b3e747bfa90735caaf9bc56d0036dc82a07a99dee13aa584e2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
