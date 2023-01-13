class ApplicationController < ActionController::Base
  @@start = Date.new(2022,11,19)

  def self.count_days
    today = Date.today
    days = (@@start..today).select{|d|d.workday?}
    days.count
  end

end
