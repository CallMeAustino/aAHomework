def sluggishoctopus(arr)
    max_fish = nil
    arr.each_with_index do |ele1, idx1|
        arr.each_with_index do |ele2, idx2|
            if  ele1.length > ele2.length
                max_fish = ele1
            end
        end
    end
    max_fish
end

p sluggishoctopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])
require 'byebug'
def dominantoctopus(arr) #[1,2,3,4,5] mergesort / quicksort
    # debugger
    return arr if arr.length <= 1
    middle_index = (arr.length-1)/2
    lefthalf = dominantoctopus(arr[0..middle_index])
    righthalf = dominantoctopus(arr[middle_index+1..-1])
    merge_helper(lefthalf,righthalf)
end

def merge_helper(lefthalf,righthalf)
    result = []
    until lefthalf.empty? || righthalf.empty?
        case lefthalf[0] <=> righthalf[0]
        when -1
            result << lefthalf.shift
        when 0 
            result << lefthalf.shift
        when 1
            result << righthalf.shift
        end
    end
    result + lefthalf + righthalf
end

p dominantoctopus([1,4,6,2,1,6,8,2,3])

def cleveroctopus(arr)
    bigfish = ["f"]
    arr.each do |fish|
        if fish.length > bigfish[-1].length
            bigfish << fish
        end
    end
    bigfish[-1]
end

p cleveroctopus(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh'])