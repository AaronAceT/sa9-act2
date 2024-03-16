require "todo_mode.rb"

RSpec.describe TodoList do
    describe "#add" do
      it "adds a todo to the list" do
        todo_listing = TodoList.new
        todo = "Learn how to code"
        todo_listing.add(todo)
        expect(todo_listing.todos).to include(todo)
      end
    end
  
    describe "#remove" do
      it "removes a todo from the list" do
        todo_listing = TodoList.new
        todo = "learn more code"
        todo_listing.add(todo)
        todo_listing.remove(todo)
        expect(todo_listing.todos).not_to include(todo)
      end
    end
  
    describe "#todos" do
      it "returns all todos" do
        todo_listing = TodoList.new
        todo1 = "Learn even more code"
        todo2 = "Learn Ruby"
        todo_listing.add(todo1)
        todo_listing.add(todo2)
        expect(todo_listing.todos).to match_array([todo1, todo2])
      end
    end
end  