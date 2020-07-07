    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://mathscinet.ams.org/mathscinet/search/authors.html?authorName={query}"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,CGI.escape(query))

    %x{open "#{url}"}
