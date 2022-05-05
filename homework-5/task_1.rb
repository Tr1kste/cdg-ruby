require "socket"
require "rack"
require "rack/utils"

server = TCPServer.new("0.0.0.0", 3000)

@balance = 0

class App
  def call(env)
    req = Rack::Request.new(env)

    case req.path

    when "/"
      [200, { "Content-Type" => "text/html" }, ["
            <ul>
                <li>If You want deposit money print to adress browser:  /deposit?value=</li>
                <li>If You want withdraw money print to adress browser: /withdraw?value=</li> 
                <li>If You want check balance print to adress browser:  /balance</li>
            </ul>
        "]]
    when "/deposit"
      [200, { "Content-Type" => "text/html" }, ["Your balance after deposit:"]]
    when "/withdraw"
      [200, { "Content-Type" => "text/html" }, ["Your balance after withdraw:"]]
    when "/balance"
      [200, { "Content-Type" => "text/html" }, ["Your balance is:"]]
    else
      [404, { "Content-Type" => "text/html" }, ["Not found"]]
    end
  end
end

app = App.new

while connection = server.accept
  request = connection.gets
  method, full_path = request.split(" ")
  @path = full_path.split("?")[0]
  @eq = full_path.split("=")[1].to_i

  status, headers, body = app.call({
    "REQUEST_METHOD" => method,
    "PATH_INFO" => @path,
  })

  connection.print("HTTP/1.1 #{status}\r\n")

  headers.each { |key, value| connection.print("#{key}: #{value}\r\n") }

  connection.print "\r\n"

  body.each do |part|
    if (full_path.include?("deposit"))
      @balance += @eq
      connection.print("#{part} #{@balance}")
    elsif (full_path.include?("withdraw"))
      @balance -= @eq
      connection.print("#{part} #{@balance}")
    elsif (full_path.include?("balance"))
      connection.print("#{part} #{@balance}")
    else
      connection.print(part)
    end
  end

  connection.close
end
