class OvertimenotificationsController < ApplicationController
  before_action :superior_user, only: [:new]
  
  def new
    @attendance = Attendance.find_by(id: params[:attendance_id])
  end

end
