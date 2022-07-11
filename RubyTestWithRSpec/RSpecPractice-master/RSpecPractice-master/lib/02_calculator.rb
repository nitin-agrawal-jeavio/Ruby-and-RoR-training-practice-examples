class Calculator
  def add(num1,num2)
    num1 + num2
  end

  def subtract(num1,num2)
    num1 - num2
  end

  def sum(arr)
    return 0 if arr.empty?
    arr.map.inject(:+)
  end

  def multiply(arr)
    return 0 if arr.empty?
    arr.map.inject(:*)
  end

  def power(num1,num2)
    return 1 if num2 == 0
    new_array = []
    num2.times{new_array << num1}
    new_array.inject(:*)
  end

  def factorial(num)
    return 1 if num == 0
    new_array = []
    count = num
    while count > 0
      new_array << count
      count -= 1
    end
    new_array.inject(:*)
  end
end