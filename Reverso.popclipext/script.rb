    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://context.reverso.net/translation/french-english/{query}?"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,query)

    %x{open "#{url}"}
