require "application_system_test_case"

class ProjectsTest < ApplicationSystemTestCase
  setup do
    @project = projects(:one)
  end

  test "visiting the index" do
    visit projects_url
    assert_selector "h1", text: "Projects"
  end

  test "creating a Project" do
    visit projects_url
    click_on "New Project"

    fill_in "Cierre votacion", with: @project.cierre_votacion
    fill_in "Descripcion", with: @project.descripcion
    fill_in "Imagen", with: @project.imagen
    fill_in "Inicio votacion", with: @project.inicio_votacion
    fill_in "Nombre", with: @project.nombre
    fill_in "Resultado", with: @project.resultado
    fill_in "Votos negativos", with: @project.votos_negativos
    fill_in "Votos positivos", with: @project.votos_positivos
    click_on "Create Project"

    assert_text "Project was successfully created"
    click_on "Back"
  end

  test "updating a Project" do
    visit projects_url
    click_on "Edit", match: :first

    fill_in "Cierre votacion", with: @project.cierre_votacion
    fill_in "Descripcion", with: @project.descripcion
    fill_in "Imagen", with: @project.imagen
    fill_in "Inicio votacion", with: @project.inicio_votacion
    fill_in "Nombre", with: @project.nombre
    fill_in "Resultado", with: @project.resultado
    fill_in "Votos negativos", with: @project.votos_negativos
    fill_in "Votos positivos", with: @project.votos_positivos
    click_on "Update Project"

    assert_text "Project was successfully updated"
    click_on "Back"
  end

  test "destroying a Project" do
    visit projects_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project was successfully destroyed"
  end
end
