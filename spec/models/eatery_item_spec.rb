require 'rails_helper'
require 'spec_helper'

RSpec.describe EateryItem, type: :model do

  let(:eatery) { create(:eatery) }
  let(:item) { create(:item) }
  let(:relationship) { eatery.eatery_items.build(item_id: item.id) }

  subject { relationship }

  it "has a valid factory and a relationship" do
    expect(subject).to be_valid
  end
end
