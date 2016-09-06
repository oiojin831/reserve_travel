class TimeSlot < ApplicationRecord
  def reserve
    update_attributes(empty: empty-1, reserved: reserved+1)
  end
end
