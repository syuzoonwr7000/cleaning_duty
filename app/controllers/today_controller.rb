class TodayController < ApplicationController
    @@start = Date.new(2022,11,19)

  def index
    member_array
    count_days
    @student.rotate!(@days)
    
    if @days%3 == 0
      @student.each_index do |i|
        @student[i].rotate!(@days/3)
      end
    else
      @student.each_index do |i|
        @student[i].rotate!(@days/3)
      end
    end 
  end

  def show
  end


  def edit
  end

  def new
    index
    Member.create(member: @student[0][0..5].join(','),jihanki: @student[0][6],daikyousitu:@student[0][7],date:Date.today)
    @member = Member.select("member") 
  end

  private

  def member_array
    numbers = Student.select("number")
    group1 = []
    group2 = []
    group3 = []
    @student = []

    8.times do |i|
       group1.push(numbers[i].number)
       group2.push(numbers[i+8].number)
       group3.push(numbers[i+16].number)
    end
    @student.append(group1,group2,group3)
    
  end
  
  def count_days
    today = Date.today
    days = (@@start..today).select{|d|d.workday?}
    @days = days.count
  end
end
