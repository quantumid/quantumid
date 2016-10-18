module MyVimeo
  class Base
    attr_reader :id, :name, :description
    include HTTParty
    base_uri 'https://api.vimeo.com'

    def initialize(id, token)
      @id = id
      @token = token
    end

    def persisted?
      !model_type.where(vimeo_id: @id).blank?
    end

    protected

    def token_header
      { "Authorization" => "Bearer #{@token}" }
    end

    def path
      "/#{type}/#{id}"
    end

    def full
      response = self.class.get(path, headers: token_header)
      JSON.parse(response)
    end
  end
end
