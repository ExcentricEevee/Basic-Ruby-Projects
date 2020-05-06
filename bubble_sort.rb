require 'pry'

def bubble_sort(list)
  temp = 0
  change_made = false
  #to test how many passes are made, for efficiency
  count = 0

  #pass through array number of times equal to number of items minus one
  (list.length-1).times do
    change_made = false
    count += 1

    #a passthrough of value checks
    list.each_with_index do |value, idx|
      unless (idx+1 == list.length)
        if (value > list[idx+1])
          temp = value
          list[idx] = list[idx+1]
          list[idx+1] = temp
          change_made = true
        end
      end
    end

    #exit loop if this passthrough did nothing; it's already sorted
    break if(change_made == false)
  end

  p list
  p count
end

bubble_sort([4,3,78,2,0,2])
bubble_sort([1,2,3,5,4,6,7,8,9])