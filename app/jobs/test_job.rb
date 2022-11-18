class TestJob < ApplicationJob
  queue_as :default

  discard_on(ActiveRecord::RecordNotFound) do
    puts "Couldn't find it... I'm giving up."
  end

  def perform(user)
    "My name is: #{user.name}"
  end
end
