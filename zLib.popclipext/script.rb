    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://book4you.org/s/{query}?"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,query)

    %x{open "#{url}"}
