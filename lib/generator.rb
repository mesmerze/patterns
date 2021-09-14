module Newsletter
  class Generator
    def initialize(format)
      @format = format
    end

    def render
      <<~HTML
        #{header}

        #{body}
      HTML
    end

    def header
      if @format == :html
        '<h1>header</h1>'
      elsif @format == :markdown
        '# Header'
      end
    end

    def body
      if @format == :html
        '<p>body</p>'
      elsif @format == :markdown
        'body'
      end
    end
  end
end
