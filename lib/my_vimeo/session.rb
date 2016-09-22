module MyVimeo
  class Session
    include HTTParty
    base_uri 'https://api.vimeo.com/oauth/authorize'

    def self.token
      response['access_token']
    end

    #this will need to be changed once we establish sessions because class methods cannot be private!

    private

    def self.response
      self.post('/client', headers: self.header, body: self.body)
    end

    def self.body
      { 'grant_type' => 'client_credentials' }
    end

    def self.header
      { 'Authorization' => "basic #{secret_code}" }
    end

    def self.secret_code
      secret = "#{ENV['VIMEO_CLIENT_ID']}:#{ENV['VIMEO_CLIENT_SECRETS']}"
      Base64.encode64(secret).tr("\n", '')
    end

  end
end