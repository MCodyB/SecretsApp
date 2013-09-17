class TodoListsController < ApplicationController
  def index
    @todo_lists = TodoList.all
    respond_to do |format|
      format.json {render :json => @todo_lists.to_json(:include => :todo_items) }
    end
  end
end