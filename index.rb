puts File.read('/usr/share/dict/words')
  .split("\n")
  .select { |word| word.size == 8 }
  .map { |word| word.upcase.split('').join(' ') }
  .sample

