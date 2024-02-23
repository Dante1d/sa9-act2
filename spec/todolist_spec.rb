require 'todolist'

RSpec.describe TodoList do
  describe "#add" do
    it "adds a todo to the list" do
      # Fill in the test
      todo_list = TodoList.new
      todo_list.add("Buy Food")
      expect(todo_list.todos).to include("Buy Food")
    end
  end

  describe "#remove" do
    it "removes a todo from the list" do
      # Fill in the test
      todo_list = TodoList.new
      todo_list.add("Buy Food")
      todo_list.remove("Buy Food")
      expect(todo_list.todos).not_to include("Buy Food")
    end
  end

  describe "#todos" do
    it "returns all todos" do
      # Fill in the test
      todo_list = TodoList.new
      todo_list.add("Buy Food")
      todo_list.add("Clean Room")
      expect(todo_list.todos).to eq(["Buy Food", "Clean Room"])
    end
  end
end
