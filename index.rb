word = File.read('/usr/share/dict/words')
  .split("\n")
  .select { |word| word.size == 8 }
  .map { |word| word.upcase }
  .sample

puts "
┌───┬───┬───┬───┐  ┌───┬───┬───┬───┐
│   │   │   │   │  │   │   │   │   │
│ %s │ %s │ %s │ %s │  │ %s │ %s │ %s │ %s │
├___┼___┼___┼___┤  ├___┼___┼___┼___┤
└───┴───┴───┴───┘  └───┴───┴───┴───┘
" % [ word[0], word[1], word[2], word[3], word[4], word[5], word[6], word[7] ]

