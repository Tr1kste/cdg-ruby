require 'fileutils'

ORIG_FILE = 'task.txt'
RESULT = 'result.txt'

def student
    loop do
        print "Print age -> "
        age = gets.chomp

        file_res = File.open(RESULT)
    
        File.foreach(ORIG_FILE) do |line|
            if line.include?(age)
                File.write(RESULT, line, mode: "a+")
            end
        end
    
        if age == '-1' || FileUtils.compare_file(RESULT, ORIG_FILE)
            puts file_res.readlines.map { |line| line.chomp }
            break
        end
    end
end