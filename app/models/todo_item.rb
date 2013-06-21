class TodoItem < ActiveRecord::Base
  attr_accessible :completed, :task, :todo_list_id

  belongs_to :todo_list
end