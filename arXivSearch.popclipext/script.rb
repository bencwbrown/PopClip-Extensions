    #!/System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby

    require 'cgi'

    url = "https://arxiv.org/abs/{query}"
    query = ENV['POPCLIP_TEXT']
    url-no-dash = url.sub!(/-/,'.')
    url-no-dash.sub!(/\{query\}/,query)

    %x{open "#{url-no-dash}"}
