class DutyController < ApplicationController

  def top
    @days = count_days 
    @student = (1..24).each_slice(8).to_a
    @student.rotate!(@days)

    @student.each_index do |i|
      @student[i].rotate!(@days/3)
    end
  end

  def edit
  end
  
  def new
    Day.create(start: params[:date])
  end
  
  def update
    @startday = Day.find(1)
  end
  
  def update!
    @startday = Day.find(1)
    @startday.start = params[:date]
    @startday.save!
    redirect_to "/start/1"
  end
  
  private

  def count_days
    start = Day.find(1).start
    today = Date.today
    days = (start..today).select{|d|d.workday?}
    days.count
  end

end
