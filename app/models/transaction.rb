class Transaction < ActiveRecord::Base


  def self.total
    self.all.reduce(0) {|sum, t| sum + t.negotiation}
  end

  #this works, but doesn't go month specific
  # def self.spent_this_month
  #   var = self.all.select {|n| n.negotiation < 0}
  #   var.reduce(0) {|sum, t| sum + t.negotiation}
  # end


  #this one I hate and can't get to work

  def self.spent_this_month
    var = self.all.select do |d|
      if d.negotiation < 0 && d.created_at.month == Time.now.month
        d
      end
    end
    var.reduce(0) {|sum, t| sum + t.negotiation}
  end






  def get_date_to_work

  end

  def self.biggest_expense
    array = self.all.map {|n| n.negotiation}
    array = array.sort
    array = array[0]
    array.to_f
  end
end
