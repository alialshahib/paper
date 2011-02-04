# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_paper_session',
  :secret      => 'cfa2ada85481b6feb2761ee340fb7647362c2dea64353fa8a36c42c087324884882f68b7d1c8b2cef5ec6c4c03fa7ba82cbf39057306292037787395d5dc5466'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
