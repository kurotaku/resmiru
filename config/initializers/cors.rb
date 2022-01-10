Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://0.0.0.0:3000', 'http://localhost:3000', 'http://a4e4-240d-1a-d29-ec00-6d94-90c1-85b5-8d51.ngrok.io', 'https://a4e4-240d-1a-d29-ec00-6d94-90c1-85b5-8d51.ngrok.io'
    resource '*',
      headers: :any,
      methods: :any,
      credentials: true
  end
end