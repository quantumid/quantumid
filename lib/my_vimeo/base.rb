module MyVimeo
  class Base
    attr_reader :id
    include HTTParty
    base_uri 'https://api.vimeo.com'
    headers "Authorization" => "Bearer #{ENV['VIMEO_TOKEN']}"

    def initialize(id)
      @id = id
    end

    def path
      "/#{type}/#{id}"
    end

    def name
      full['name']
    end

    def description
      full['description']
    end

    def full
      response = self.class.get(path)
      JSON.parse(response)
    end
  end
end
