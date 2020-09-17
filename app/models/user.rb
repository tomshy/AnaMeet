class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, :email, presence: true

  def join_meeting(meeting_id: )
    meeting = Meeting.find(meeting_id)
    meeting.users << self
  end

  def leave_meeting(meeting_id: )
    meeting = Meeting.find(meeting_id)
    meeting.users.destroy(self)
  end
end
