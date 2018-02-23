def quick_sort(collection)
  if collection.length <= 1
    return collection
  else
    pivot = collection.pop
    left_collection = []
    right_collection = []

    collection.each do |el|
      if el <= pivot
        left_collection.push(el)
      else
        right_collection.push(el)
      end
    end

    sorted_left = quick_sort(left_collection)
    sorted_right = quick_sort(right_collection)
    return sorted_left + [pivot] + sorted_right
  end
end
