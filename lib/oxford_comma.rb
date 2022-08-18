require 'pry'

def oxford_comma(array)
    array_length = array.size
    case 
    when array_length == 1
        return array.join
    when array_length == 2
        and_value = array.pop
        array.push(" and ")
        array.push(and_value)
        return array.join
    when array_length >= 3
        and_value = array.pop
        array.push("and ")
        add = array.join(', ')
        add = add + and_value
        return add
        
    end
end

oxford_comma(["fiddleheads", "okra", "kohlrabi"])