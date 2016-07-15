module FileValidator
  def ask(message, valid_options = false)
    if valid_options
      answer = get_stdin("#{message} #{valid_options.to_s.gsub(/"/, '').gsub(/, /,'/')} ") until valid_options.include?(answer)
    else
      answer = get_stdin(message)
    end
    answer
  end

  def get_stdin(message)
    print message
    STDIN.gets.chomp
  end

  def valid?(filename)
    if File.exist?(filename) then ask("'#{filename}'' already exists. Would you like to overwrite?", ['y', 'n']) == 'y' end
  end
end
