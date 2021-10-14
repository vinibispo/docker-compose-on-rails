# frozen_string_literal: true

require 'test_helper'
class GeneratePostJobTest < ActiveJob::TestCase
  test 'increase amount of post' do
    old_amount_posts = Post.count
    GeneratePostJob.perform_now
    new_amount_posts = Post.count
    assert_not_equal(old_amount_posts, new_amount_posts)
  end

  test 'increase amount of category' do
    old_amount_category = Category.count
    GeneratePostJob.perform_now
    new_amount_category = Category.count
    assert_not_equal(old_amount_category, new_amount_category)
  end
end
