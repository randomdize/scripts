Dir.foreach(".") {
  |x|
  if File.extname(x) == ".md"
    new_file = x + '.new'
    File.open(new_file, 'w') do |file|
      file.puts '---'
      File.foreach(x) do |oldl|
        file.puts(oldl)
      end
    end
    File.rename(x, x + '.old')
    File.rename(new_file, x)
  end
}
