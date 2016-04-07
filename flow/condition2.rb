# capitalize_method.rb

def capitalize(name)
    if name.length > 10
        name.upcase
    else
        name
    end
end

puts capitalize("Linda Covell")
puts capitalize("Jerry Covell")


