class TodoList < ActiveRecord::Base
  attr_accessible :title, :user_id

  has_many :todo_items, :inverse_of => :todo_list
  belongs_to :user


  def as_json(options = {})
    super(options.merge(:include => :todo_items))
  end
end
