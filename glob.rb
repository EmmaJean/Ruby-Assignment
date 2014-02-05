#Emma Mossinger


def glob_match(filenames, pattern)

 pattern.gsub!(/[\*\?\.]/, ‘*’ => ‘.*’, ‘.’ => ‘\.’, ‘?’ => ‘.’)

 regex = Regexp.new(pattern)

 filenames.select do |filename|

    filename =~ regex

 end
end
