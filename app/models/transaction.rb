class Transaction < ActiveRecord::Base


  def self.total
    self.all.reduce(0) {|sum, t| sum + t.negotiation}
  end


  def self.spent_this_month
    var = self.all.select {|n| n.negotiation < 0}
    var.reduce(0) {|sum, t| sum + t.negotiation}
  end

end
