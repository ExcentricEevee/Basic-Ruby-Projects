require 'pry'

def bubble_sort(list)
  temp = 0

  #pass through array number of times equal to number of items minus one
  (list.length-1).times do
    #a pass through of value checks
    list.each_with_index do |value, idx|

      unless (idx+1 == list.length)
        if (value > list[idx+1])
          temp = value
          list[idx] = list[idx+1]
          list[idx+1] = temp
        end
      end
    end
  end

  p list
end

bubble_sort([4,3,78,2,0,2])