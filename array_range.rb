class Array
  def toTwenty
    (1..20).to_a
  end
  def toForty
    (0..40).to_a.select!{|a| a%2==0}
  end
  def toOneThousand
    (0..1000).to_a.select!{|a| a%10==0}
  end
end
