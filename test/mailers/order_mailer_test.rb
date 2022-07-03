require "test_helper"

class OrderMailerTest < ActionMailer::TestCase
  test "received" do
    mail = OrderMailer.received(orders(:one))
    assert_equal "Confirmación de pedido de Carnes Asadas Rodríguez", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["josejulian_rodriguez@ucol.mx"], mail.from
    assert_match /1 x Orden de Sirlon/, mail.body.encoded
  end

  test "shipped" do
    mail = OrderMailer.shipped(orders(:one))
    assert_equal "Pedido de Carnes Asadas Rodríguez enviado", mail.subject
    assert_equal ["dave@example.org"], mail.to
    assert_equal ["josejulian_rodriguez@ucol.mx"], mail.from
    assert_match /<td[^>]*>1<\/td>\s*<td>Orden de Sirlon<\/td>/,
    mail.body.encoded
  end

end
