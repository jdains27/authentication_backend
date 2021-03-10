Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
        origins "http://localhost:3000"
        resource "*", headers: :any, methods: %i[get post put patch delete options head], credentials: true
    end

    # for the domain that I'll push this app to
    
    allow do
        origins "http://Jordan's-chess-react-app.heroku.com"
        resource "*", headers: :any, methods: %i[get post put patch delete options head], credentials: true
    end
end