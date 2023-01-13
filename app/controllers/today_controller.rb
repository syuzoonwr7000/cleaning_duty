class TodayController < ApplicationController
    @@start = Date.new(2022,11,19)
    @@days = count_days 

  def index
    member_array
    @student.rotate!(@@days)
    
    if @@days%3 == 0
      @student.each_index do |i|
        @student[i].rotate!(@@days/3)
      end
    else
      @student.each_index do |i|
        @student[i].rotate!(@@days/3)
      end
    end 
  end

  def days_back
    @@days - 1 
  end

  def self.count_days
    today = Date.today
    days = (@@start..today).select{|d|d.workday?}
    days.count
  end


  private

  def member_array
    numbers = (1..24).to_a
    group1 = []
    group2 = []
    group3 = []
    @student = []

    8.times do |i|
       group1.push(numbers[i])
       group2.push(numbers[i+8])
       group3.push(numbers[i+16])
    end
    @student.append(group1,group2,group3)
    
  end
  
end
