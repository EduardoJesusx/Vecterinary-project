require "application_system_test_case"

class ExamsTest < ApplicationSystemTestCase
  setup do
    @exam = exams(:one)
  end

  test "visiting the index" do
    visit exams_url
    assert_selector "h1", text: "Exams"
  end

  test "should create exam" do
    visit exams_url
    click_on "New exam"

    fill_in "Description", with: @exam.description
    fill_in "Observation", with: @exam.observation
    fill_in "Pet owner", with: @exam.pet_owner_id
    fill_in "Scheduled", with: @exam.scheduled
    fill_in "Title", with: @exam.title
    fill_in "Veterinary", with: @exam.veterinary_id
    click_on "Create Exam"

    assert_text "Exam was successfully created"
    click_on "Back"
  end

  test "should update Exam" do
    visit exam_url(@exam)
    click_on "Edit this exam", match: :first

    fill_in "Description", with: @exam.description
    fill_in "Observation", with: @exam.observation
    fill_in "Pet owner", with: @exam.pet_owner_id
    fill_in "Scheduled", with: @exam.scheduled
    fill_in "Title", with: @exam.title
    fill_in "Veterinary", with: @exam.veterinary_id
    click_on "Update Exam"

    assert_text "Exam was successfully updated"
    click_on "Back"
  end

  test "should destroy Exam" do
    visit exam_url(@exam)
    click_on "Destroy this exam", match: :first

    assert_text "Exam was successfully destroyed"
  end
end
