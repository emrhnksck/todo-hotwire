class Todo < ApplicationRecord
  validates :title, presence: true
  after_update_commit {broadcast_replace_to "todos" }
end
