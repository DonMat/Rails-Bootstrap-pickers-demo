class Note < ActiveRecord::Base
  validates :title, :time, :due_date, :created_at, presence: true
end
