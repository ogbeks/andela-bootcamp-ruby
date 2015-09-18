def binary_search(values, target)
    values = values.sort
    mid = (values.length / 2).floor
    if mid > target
        values = values.take(mid)
        mid = (values.length / 2).floor
        binary_search(values, target)
    elsif mid < target
        values = values.drop(mid)
        mid = (values.length /2).floor
        binary_search(values, target)
    else
        put target
    end
end

binary_search([1,2,3,4,5,6,7,8,9,11,23,45],9)
