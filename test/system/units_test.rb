require "application_system_test_case"

class UnitsTest < ApplicationSystemTestCase
  setup do
    @unit = units(:one)
  end

  test "visiting the index" do
    visit units_url
    assert_selector "h1", text: "Units"
  end

  test "creating a Unit" do
    visit units_url
    click_on "New Unit"

    fill_in "Ciudad", with: @unit.ciudad
    fill_in "Comuna", with: @unit.comuna
    fill_in "Nombre calle", with: @unit.nombre_calle
    fill_in "Numero calle", with: @unit.numero_calle
    fill_in "Profile", with: @unit.profile_id
    fill_in "Region", with: @unit.region
    fill_in "Tipo", with: @unit.tipo
    fill_in "Zip code", with: @unit.zip_code
    click_on "Create Unit"

    assert_text "Unit was successfully created"
    click_on "Back"
  end

  test "updating a Unit" do
    visit units_url
    click_on "Edit", match: :first

    fill_in "Ciudad", with: @unit.ciudad
    fill_in "Comuna", with: @unit.comuna
    fill_in "Nombre calle", with: @unit.nombre_calle
    fill_in "Numero calle", with: @unit.numero_calle
    fill_in "Profile", with: @unit.profile_id
    fill_in "Region", with: @unit.region
    fill_in "Tipo", with: @unit.tipo
    fill_in "Zip code", with: @unit.zip_code
    click_on "Update Unit"

    assert_text "Unit was successfully updated"
    click_on "Back"
  end

  test "destroying a Unit" do
    visit units_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unit was successfully destroyed"
  end
end
