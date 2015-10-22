require 'rails_helper'

describe Picture do
  it { should have_and_belong_to_many (:tags) }
  it {should validate_presence_of :title}
  it {should validate_uniqueness_of :title}

end
