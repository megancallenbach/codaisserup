require 'rails_helper'

describe "Viewing individual event" do
  let(:event) {create :event, user: user}
  let(:user) {create :user}

  it "shows the event's details" do
    visit event_path(event)

    expect(page).to have_text(event.name)
    expect(page).to have_text(event.description)
    expect(page).to have_text(event.price)
    expect(page).to have_text(event.location)
    expect(page).to have_text(event.capacity)
    expect(page).to have_text(event.starts_at)
    expect(page).to have_text(event.ends_at)

  end
end
