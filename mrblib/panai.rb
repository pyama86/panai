def __main__(argv)
  argv.shift
  if argv[0] == "version"
    puts "v#{Panai::VERSION}"
  else
    Panai::Cli.stat(argv)
  end
end
