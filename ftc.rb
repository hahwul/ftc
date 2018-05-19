require 'clipboard'

def read_file(file_name)
  file = File.open(file_name, "r")
  data = file.read
  file.close
  return data
end

def usage
  puts "Usage:: ftc.rb [file]"
end

#[TODO] Argument parsing?
#       -h, --help, -v, --version?

argument = ARGV
if argument.size == 0
  usage()
  exit()
end

#[TODO] Add multi argument and copy (multi copy)

fname = argument.pop
data = read_file(fname)

Clipboard.copy(data)

puts "[+] Success copy "+data.length.to_s+" length data to clipboard"
