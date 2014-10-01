require 'rails_helper'

describe Topic do
  context 'When create Topic with blank fields' do
    it "Does't create Topic if :title is blank" do
      expect{Topic.create!(body: 'lalala')}.to raise_error
    end

    it "Does't create Topic if :body is blank" do
      expect{Topic.create!(title: 'lalala')}.to raise_error
    end
  end
end
