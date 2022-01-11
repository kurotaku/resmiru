Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'http://0.0.0.0:3000', 'http://localhost:3000', 'https://b121-240d-1a-d29-ec00-a9d1-7561-953b-202b.ngrok.io'
    resource '*',
      headers: :any,
      methods: :any,
      credentials: true
  end
end