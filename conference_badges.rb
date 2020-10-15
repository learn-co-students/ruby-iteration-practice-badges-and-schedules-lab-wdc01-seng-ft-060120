
def badge_maker(name)
    return "Hello, my name is #{name}."
end

def batch_badge_creator(array)
    array.map{|name| badge_maker(name)}
end

def assign_rooms(array)
    rooms_array = []
    array.each_with_index do |name, index|
        rooms_array << "Hello, #{name}! You'll be assigned to room #{index + 1}!"
    end
    return rooms_array
end

def printer(array)
    batch_badge_creator(array).each{|badge| puts badge}
    assign_rooms(array).each{|assignment| puts assignment}
end