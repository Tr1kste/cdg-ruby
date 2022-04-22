DATA_PATH = 'task.txt'
BUFFER = 'buffer.txt'

def index
    file = File.open(DATA_PATH)
    return file.readlines.map { |line| line.chomp }
    file.close
end

def find(id)
    File.foreach(DATA_PATH).with_index do |line, index|
    return line if index == id
    end
end

def where(pattern)
    arr = []
    File.foreach(DATA_PATH).with_index do |string, index|
        if string.include?(pattern)
            arr.push(index)
        end
    end
    return arr.map {|i| i}
end

def update(id, text)
    file = File.open(BUFFER, 'w')

    File.foreach(DATA_PATH).with_index do |line, index|
      file.puts(id == index ? text : line)
    end
  
    file.close
    File.write(DATA_PATH, File.read(BUFFER))
  
    File.delete(BUFFER) if File.exist?(BUFFER)
end

def delete(id)
    file = File.open(BUFFER, 'w')

    File.foreach(DATA_PATH).with_index do |line, index|
      file.puts line if index != id
    end
  
    file.close
    File.write(DATA_PATH, File.read(BUFFER))
  
    File.delete(BUFFER) if File.exist?(BUFFER)
end

delete(0)