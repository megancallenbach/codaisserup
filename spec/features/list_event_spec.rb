require 'rails_helper'

describe "Current user viewing the list of events" do
  before {login_as user}

  let(:user) {create :user, email: "current@user.com"}
  let(:another_user) { create :user, email: "another@user.com" }

  let!(:event1) {create :event, name: "La la Land", user: user}
  let!(:event2) {create :event, name: "Ba doom chi", user: user}
  let!(:event3) {create :event, name: "Another Users Event", user: another_user}

  it "shows all users events" do
    visit events_path

    expect(page).to have_text("La la Land")
    expect(page).to have_text("Ba doom chi")
  end

  it "does not show other users events" do
    visit events_path

    expect(page).not_to have_text("Another Users Event")

  end
end
