class Match < ApplicationRecord
  belongs_to :user1, class_name: 'User'
  belongs_to :user2, class_name: 'User'
  has_one :chatroom, dependent: :destroy

  def other_user
    if self.user1 == current_user
      return self.user2
    else
      return self.user1
    end
  end
end
