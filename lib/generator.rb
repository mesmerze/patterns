module Newsletter
  class Generator
    def render
      <<~HTMLORMARKDOWN
        #{header}

        #{body}
      HTMLORMARKDOWN
    end

    def header
      raise NotImplementedError
    end

    def body
      raise NotImplementedError
    end
  end
end
