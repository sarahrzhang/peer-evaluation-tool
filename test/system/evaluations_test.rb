require "application_system_test_case"

class EvaluationsTest < ApplicationSystemTestCase
  setup do
    @evaluation = evaluations(:one)
  end

  test "visiting the index" do
    visit evaluations_url
    assert_selector "h1", text: "Evaluations"
  end

  test "creating a Evaluation" do
    visit evaluations_url
    click_on "New Evaluation"

    fill_in "Comment", with: @evaluation.comment
    fill_in "Communication score", with: @evaluation.communication_score
    fill_in "Contribution score", with: @evaluation.contribution_score
    fill_in "Leadership score", with: @evaluation.leadership_score
    fill_in "Quality score", with: @evaluation.quality_score
    fill_in "Skills score", with: @evaluation.skills_score
    click_on "Create Evaluation"

    assert_text "Evaluation was successfully created"
    click_on "Back"
  end

  test "updating a Evaluation" do
    visit evaluations_url
    click_on "Edit", match: :first

    fill_in "Comment", with: @evaluation.comment
    fill_in "Communication score", with: @evaluation.communication_score
    fill_in "Contribution score", with: @evaluation.contribution_score
    fill_in "Leadership score", with: @evaluation.leadership_score
    fill_in "Quality score", with: @evaluation.quality_score
    fill_in "Skills score", with: @evaluation.skills_score
    click_on "Update Evaluation"

    assert_text "Evaluation was successfully updated"
    click_on "Back"
  end

  test "destroying a Evaluation" do
    visit evaluations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evaluation was successfully destroyed"
  end
end
