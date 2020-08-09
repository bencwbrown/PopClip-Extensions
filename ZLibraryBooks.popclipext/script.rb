    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://b-ok.cc/s/?q={query}"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,query)

    %x{open "#{url}"}
