# frozen_string_literal: true

require 'test_helper'
class RoutesTest < ActionDispatch::IntegrationTest
  test 'should create async_create route' do
    assert_generates '/posts/async_create', controller: 'posts', action: 'async_create'
  end
end
