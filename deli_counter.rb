# Write your code here.
# katz_deli = []
katz_deli = ["Ada", "Grace"]


def build_line(line)
    queueNum = 1
    if line.empty?
        result = []
    else
        output = ["The line is currently:"]
        line.each do |person|
            output << "#{queueNum}."
            output << "#{person}"
            queueNum += 1
        end
        result = output
    end
    result
end


def line(queue)
    result = build_line(queue)
    if result.empty?
        puts "The line is currently empty."
    else
        puts result.join(" ")
    end
end

def take_a_number(array, name)
    array << name
    updatedArray = build_line(array)
    theirNumber = updatedArray[-2][0]
    puts "Welcome, #{name}. You are number #{theirNumber} in line." 
end

def now_serving queue
    if queue.empty?
        puts "There is nobody waiting to be served!"
    else
        puts "Currently serving #{queue[0]}."
        queue.shift
    end
end

# line katz_deli
# take_a_number katz_deli, "Emmett"
now_serving katz_deli