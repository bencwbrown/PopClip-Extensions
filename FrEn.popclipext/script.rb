    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://www.wordreference.com/fren/{query}?"
    query = ENV['POPCLIP_TEXT']
    url.sub!(/\{query\}/,query)

    %x{open "#{url}"}
