Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://0.0.0.0:3000', 'http://localhost:3000', ENV['CLIENT_HTTPS_URL']
    resource '*',
      headers: :any,
      methods: :any,
      credentials: true
  end
end