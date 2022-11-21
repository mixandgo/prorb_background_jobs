class TestJob < ApplicationJob
  queue_as :default

  def perform(user)
    "My name is: #{user.name}"
  end
end
