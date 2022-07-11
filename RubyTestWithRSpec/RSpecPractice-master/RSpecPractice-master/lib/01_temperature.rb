class Temprature
  def ftoc(num)
    (5.0/9.0) * (num - 32).to_f
  end

  def ctof(num)
    (9.0/5.0) * num + 32
  end
end
