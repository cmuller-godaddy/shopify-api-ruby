# typed: strict
# frozen_string_literal: true

########################################################################################################################
# This file is auto-generated. If you have an issue, please create a GitHub issue.                                     #
########################################################################################################################

$VERBOSE = nil
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require "minitest/autorun"
require "webmock/minitest"

require "shopify_api"
require_relative "../../test_helper"

class ProductResourceFeedback202210Test < Test::Unit::TestCase
  def setup
    super

    test_session = ShopifyAPI::Auth::Session.new(id: "id", shop: "test-shop.myshopify.io", access_token: "this_is_a_test_token")
    ShopifyAPI::Context.activate_session(test_session)
    modify_context(api_version: "2022-10")
  end

  def teardown
    super

    ShopifyAPI::Context.deactivate_session
  end

  sig do
    void
  end
  def test_1()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-10/products/632910392/resource_feedback.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "resource_feedback" => hash_including({"state" => "requires_action", "messages" => ["Needs at least one image."], "resource_updated_at" => "2023-01-03T12:21:36-05:00", "feedback_generated_at" => "2023-01-03T17:45:40.928568Z"}) }
      )
      .to_return(status: 200, body: JSON.generate({"resource_feedback" => {"created_at" => "2023-01-03T12:45:42-05:00", "updated_at" => "2023-01-03T12:45:42-05:00", "resource_id" => 632910392, "resource_type" => "Product", "resource_updated_at" => "2023-01-03T12:21:36-05:00", "messages" => ["Needs at least one image."], "feedback_generated_at" => "2023-01-03T12:45:40-05:00", "state" => "requires_action"}}), headers: {})

    product_resource_feedback = ShopifyAPI::ProductResourceFeedback.new
    product_resource_feedback.product_id = 632910392
    product_resource_feedback.state = "requires_action"
    product_resource_feedback.messages = [
      "Needs at least one image."
    ]
    product_resource_feedback.resource_updated_at = "2023-01-03T12:21:36-05:00"
    product_resource_feedback.feedback_generated_at = "2023-01-03T17:45:40.928568Z"
    product_resource_feedback.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-10/products/632910392/resource_feedback.json")
  end

  sig do
    void
  end
  def test_2()
    stub_request(:post, "https://test-shop.myshopify.io/admin/api/2022-10/products/632910392/resource_feedback.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json", "Content-Type"=>"application/json"},
        body: { "resource_feedback" => hash_including({"state" => "success", "resource_updated_at" => "2023-01-03T12:21:36-05:00", "feedback_generated_at" => "2023-01-03T17:45:44.063762Z"}) }
      )
      .to_return(status: 200, body: JSON.generate({"resource_feedback" => {"created_at" => "2023-01-03T12:45:45-05:00", "updated_at" => "2023-01-03T12:45:45-05:00", "resource_id" => 632910392, "resource_type" => "Product", "resource_updated_at" => "2023-01-03T12:21:36-05:00", "messages" => [], "feedback_generated_at" => "2023-01-03T12:45:44-05:00", "state" => "success"}}), headers: {})

    product_resource_feedback = ShopifyAPI::ProductResourceFeedback.new
    product_resource_feedback.product_id = 632910392
    product_resource_feedback.state = "success"
    product_resource_feedback.resource_updated_at = "2023-01-03T12:21:36-05:00"
    product_resource_feedback.feedback_generated_at = "2023-01-03T17:45:44.063762Z"
    product_resource_feedback.save

    assert_requested(:post, "https://test-shop.myshopify.io/admin/api/2022-10/products/632910392/resource_feedback.json")
  end

  sig do
    void
  end
  def test_3()
    stub_request(:get, "https://test-shop.myshopify.io/admin/api/2022-10/products/632910392/resource_feedback.json")
      .with(
        headers: {"X-Shopify-Access-Token"=>"this_is_a_test_token", "Accept"=>"application/json"},
        body: {}
      )
      .to_return(status: 200, body: JSON.generate({"resource_feedback" => [{"created_at" => "2023-01-03T12:45:45-05:00", "updated_at" => "2023-01-03T12:45:45-05:00", "resource_id" => 632910392, "resource_type" => "Product", "resource_updated_at" => "2023-01-03T12:21:36-05:00", "messages" => ["Needs at least one image."], "feedback_generated_at" => "2023-01-03T11:45:45-05:00", "state" => "requires_action"}]}), headers: {})

    ShopifyAPI::ProductResourceFeedback.all(
      product_id: 632910392,
    )

    assert_requested(:get, "https://test-shop.myshopify.io/admin/api/2022-10/products/632910392/resource_feedback.json")
  end

end
