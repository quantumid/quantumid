module MyVimeo
  class Base
    attr_reader :id, :name, :description
    include HTTParty
    base_uri 'https://api.vimeo.com'

    def initialize(id)
      @id = id
      @token = new_token
      @name = name
      @description = description
    end

    protected
    def name
      full['name']
    end

    def description
      full['description']
    end

    def header
      {"Authorization" => "Bearer #{@token}" }
    end

    def new_token
      MyVimeo::Session.token
    end

    def path
      "/#{type}/#{id}"
    end

    def full
      response = self.class.get(path, headers: header)
      JSON.parse(response)
    end
  end
end
