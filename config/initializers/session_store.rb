# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_bookblog_session',
  :secret      => '20109ea88ab55c72534c9191d4a67163a316dc4cfc333e2df5dd7de474f77df02855f972e2e01170542ad3befab0a5aac9891d9b1c203a99014d8fb77c05044a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
