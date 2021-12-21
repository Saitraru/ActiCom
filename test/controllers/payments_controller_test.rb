require "test_helper"

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payment = payments(:one)
  end

  test "should get index" do
    get payments_url
    assert_response :success
  end

  test "should get new" do
    get new_payment_url
    assert_response :success
  end

  test "should create payment" do
    assert_difference('Payment.count') do
      post payments_url, params: { payment: { anio: @payment.anio, fecha_pago: @payment.fecha_pago, medio_pago: @payment.medio_pago, mes_cuota: @payment.mes_cuota, monto_pago: @payment.monto_pago, motivo: @payment.motivo, profile_id: @payment.profile_id, saldo_acum: @payment.saldo_acum, total_pago: @payment.total_pago } }
    end

    assert_redirected_to payment_url(Payment.last)
  end

  test "should show payment" do
    get payment_url(@payment)
    assert_response :success
  end

  test "should get edit" do
    get edit_payment_url(@payment)
    assert_response :success
  end

  test "should update payment" do
    patch payment_url(@payment), params: { payment: { anio: @payment.anio, fecha_pago: @payment.fecha_pago, medio_pago: @payment.medio_pago, mes_cuota: @payment.mes_cuota, monto_pago: @payment.monto_pago, motivo: @payment.motivo, profile_id: @payment.profile_id, saldo_acum: @payment.saldo_acum, total_pago: @payment.total_pago } }
    assert_redirected_to payment_url(@payment)
  end

  test "should destroy payment" do
    assert_difference('Payment.count', -1) do
      delete payment_url(@payment)
    end

    assert_redirected_to payments_url
  end
end
