require "application_system_test_case"

class PaymentsTest < ApplicationSystemTestCase
  setup do
    @payment = payments(:one)
  end

  test "visiting the index" do
    visit payments_url
    assert_selector "h1", text: "Payments"
  end

  test "creating a Payment" do
    visit payments_url
    click_on "New Payment"

    fill_in "Anio", with: @payment.anio
    fill_in "Fecha pago", with: @payment.fecha_pago
    fill_in "Medio pago", with: @payment.medio_pago
    fill_in "Mes cuota", with: @payment.mes_cuota
    fill_in "Monto pago", with: @payment.monto_pago
    fill_in "Motivo", with: @payment.motivo
    fill_in "Profile", with: @payment.profile_id
    fill_in "Saldo acum", with: @payment.saldo_acum
    fill_in "Total pago", with: @payment.total_pago
    click_on "Create Payment"

    assert_text "Payment was successfully created"
    click_on "Back"
  end

  test "updating a Payment" do
    visit payments_url
    click_on "Edit", match: :first

    fill_in "Anio", with: @payment.anio
    fill_in "Fecha pago", with: @payment.fecha_pago
    fill_in "Medio pago", with: @payment.medio_pago
    fill_in "Mes cuota", with: @payment.mes_cuota
    fill_in "Monto pago", with: @payment.monto_pago
    fill_in "Motivo", with: @payment.motivo
    fill_in "Profile", with: @payment.profile_id
    fill_in "Saldo acum", with: @payment.saldo_acum
    fill_in "Total pago", with: @payment.total_pago
    click_on "Update Payment"

    assert_text "Payment was successfully updated"
    click_on "Back"
  end

  test "destroying a Payment" do
    visit payments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Payment was successfully destroyed"
  end
end
