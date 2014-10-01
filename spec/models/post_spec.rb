require 'rails_helper'

describe Post do
  describe '#reply_to' do
    let(:post) { create(:post) }
    let(:reply) { create(:post, body: 'reply') }
    before do
      reply.reply_to(post.id)
    end

    it 'add reply to post' do
      expect(post.replies.last).to eql(reply)
    end

    it 'post replies count' do
      expect(post.replies.count).to eq(1)
    end
  end
end
