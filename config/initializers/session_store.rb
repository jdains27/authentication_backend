if Rails.env == 'production'
    Rails.application.config.session_store :cookie_store, key:'_auth_app', domain: 'http://localhost:3000'
    # localhost is placeholder. use whatever domain I bought here. 
else
    Rails.application.config.session_store :cookie_store, key:'_auth_app'
end


