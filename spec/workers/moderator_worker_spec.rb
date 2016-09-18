require 'rails_helper'
require 'sidekiq/testing'

describe ModeratorWorker do
  let(:topic) { create(:topic) }
  let(:post) { create(:post) }
end
