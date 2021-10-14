require 'ffaker'
class GeneratePostJob < ApplicationJob
  queue_as :default

  def perform(*_args)
    category = Category.create(name: FFaker::Book.genre)
    Post.create(title: FFaker::Book.title, description: FFaker::Book.description, category: category)
  end
end
