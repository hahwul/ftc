require 'clipboard'

def read_file(file_name)
  file = File.open(file_name, "r")
  data = file.read
  file.close
  return data
end

argument = ARGV

#[TODO] add multi argument and copy (multi copy)

fname = argument.pop
data = read_file(fname)

Clipboard.copy(data)

puts "[+] Success copy "+data.length.to_s+" length data to clipboard"
