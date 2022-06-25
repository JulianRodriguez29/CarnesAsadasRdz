require "application_system_test_case"
include ActiveJob::TestHelper
class OrdersTest < ApplicationSystemTestCase
  setup do
    @order = orders(:one)
  end

  test "visiting the index" do
    visit orders_url
    assert_selector "h1", text: "Orders"
  end

  test "creating a Order" do
    visit orders_url
    click_on "New Order"

    fill_in "Address", with: @order.address
    fill_in "Email", with: @order.email
    fill_in "Name", with: @order.name
    fill_in "Pay type", with: @order.pay_type
    click_on "Create Order"

    assert_text "Order was successfully created"
    click_on "Back"
  end

  test "updating a Order" do
    visit orders_url
    click_on "Edit", match: :first

    fill_in "Address", with: @order.address
    fill_in "Email", with: @order.email
    fill_in "Name", with: @order.name
    fill_in "Pay type", with: @order.pay_type
    click_on "Update Order"

    assert_text "Order was successfully updated"
    click_on "Back"
  end

  test "destroying a Order" do
    visit orders_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Order was successfully destroyed"
  end

  test "check routing number" do 
    LineItem.delete_all
    Order.delete_all
    visit store_index_url

    
    perform_enqueued_jobs do
      click_button "Relizar pedido"
    end

    orders = Order.all
    assert_equal 1, orders.size
    order = orders.first
    assert_equal"Julian",     order.name
    assert_equal "armeria 682", order.address
    assert_equal "dave@example.com", order.email
    assert_equal"Cash",    order.pay_type
    assert_equal 1, order.line_items.size

    mail = ActionMailer::Base.deliveries.last
    assert_equal ["dave@example.com"], mail.to
    assert_equal 'josejulian_rodriguez@ucol.mx', mail[:from].value
    assert_equal "Confirmación de pedido de Carnes Asadas Rodríguez", mail.subject
  end
    
end
