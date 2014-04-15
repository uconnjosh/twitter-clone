require 'spec_helper'

describe Tweet do
  it { should belong_to :user}
end
