class Attendance < ActiveRecord::Base
  belongs_to :event
  belongs_to :attendance
  belongs_to :user
end
