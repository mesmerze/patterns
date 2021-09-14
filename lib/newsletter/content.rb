module Newsletter
  class Content
    attr_reader :title, :body

    def self.parse(source, format)
      content = if format == :json then parse_json(source)
                elsif format == :xml then parse_xml(source)
                end
      new(content['title'], content['body'])
    end

    def initialize(title, body)
      @title = title
      @body = body
    end

    def self.parse_json(source)
      JSON.parse(source)
    end

    def self.parse_xml(sourse)
      xml = Nokogiri::XML sourse
      title = xml.xpath('//item/title')[0].children[0].text
      body = xml.xpath('//item/body')[0].children[0].text

      { "title" => title, "body" => body }
    end
  end
end
