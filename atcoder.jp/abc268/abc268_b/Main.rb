s,t=$<.map &:chomp
puts t =~ /^#{s}.*/ ? :Yes : :No