Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://172.19.47.8:3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  end

  # allow do
  #   origins "https://jdh-authentication-app-react.herokuapp.com"
  #   resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: true
  # end
end