require 'rails_helper'

describe Topic do
  describe 'Validations' do
    it { validate_presence_of :title }
    it { validate_presence_of :body  }
  end
end
