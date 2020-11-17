array = [1, 2, 3]

mapped_array = array.map { |num| num + 1 }

mapped_array.tap { |value| p value }