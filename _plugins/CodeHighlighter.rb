module Jekyll
  class CodeBlockStartTag < Liquid::Tag

    def initialize(tag_name, language, tokens)
      super
      @language = language.strip
    end

    def render(context)
      "<pre class='language-#{@language}'><code>"
    end
  end

  class CodeBlockEndTag < Liquid::Tag
    def render(context)
      "</code></pre>"
    end
  end
end

Liquid::Template.register_tag('code', Jekyll::CodeBlockStartTag)
Liquid::Template.register_tag('endcode', Jekyll::CodeBlockEndTag)