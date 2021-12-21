require "application_system_test_case"

class ProfilesTest < ApplicationSystemTestCase
  setup do
    @profile = profiles(:one)
  end

  test "visiting the index" do
    visit profiles_url
    assert_selector "h1", text: "Profiles"
  end

  test "creating a Profile" do
    visit profiles_url
    click_on "New Profile"

    fill_in "Apellido1", with: @profile.apellido1
    fill_in "Apellido2", with: @profile.apellido2
    fill_in "Cuota", with: @profile.cuota
    fill_in "Nombre", with: @profile.nombre
    fill_in "Rut", with: @profile.rut
    fill_in "Telefono", with: @profile.telefono
    fill_in "User", with: @profile.user_id
    click_on "Create Profile"

    assert_text "Profile was successfully created"
    click_on "Back"
  end

  test "updating a Profile" do
    visit profiles_url
    click_on "Edit", match: :first

    fill_in "Apellido1", with: @profile.apellido1
    fill_in "Apellido2", with: @profile.apellido2
    fill_in "Cuota", with: @profile.cuota
    fill_in "Nombre", with: @profile.nombre
    fill_in "Rut", with: @profile.rut
    fill_in "Telefono", with: @profile.telefono
    fill_in "User", with: @profile.user_id
    click_on "Update Profile"

    assert_text "Profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Profile" do
    visit profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Profile was successfully destroyed"
  end
end
