DATA_PATH = "task.txt"
BUFFER = "buffer.txt"

def index
  File.read(DATA_PATH)
end

def find(id)
  File.foreach(DATA_PATH).with_index do |line, index|
    return line.chomp if index == id
  end
end

def where(pattern)
  arr = []
  File.foreach(DATA_PATH).with_index do |string, index|
    if string.include?(pattern)
      arr.push(index)
    end
  end
  return arr.map { |i| puts i.to_i }
end

def update(id, text)
  file = File.open(BUFFER, "w")

  File.foreach(DATA_PATH).with_index do |line, index|
    file.puts(id == index ? text : line)
  end

  file.close
  File.write(DATA_PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
  file = File.open(BUFFER, "w")

  File.foreach(DATA_PATH).with_index do |line, index|
    file.puts line if index != id
  end

  file.close
  File.write(DATA_PATH, File.read(BUFFER))

  File.delete(BUFFER) if File.exist?(BUFFER)
end
