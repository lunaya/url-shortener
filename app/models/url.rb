class Url < ActiveRecord::Base
  before_save :generate_short

  def generate_short
    self.short = Array.new(6){('a'..'z').to_a.sample}.join
  end

end
