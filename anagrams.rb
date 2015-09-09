class Anagram
  def initialize (thing)
   @check_this = thing
  end
  def matches (*things)
    things.select!{|item| item.downcase != @check_this.downcase }
    things.select { |thing| thing.downcase.chars.sort.join.eql?(@check_this.downcase.chars.sort.join)  }
  end
end
#all(x in thing for x in @check_this)
