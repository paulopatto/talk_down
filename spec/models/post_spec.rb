# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  body       :string
#  topic_id   :integer
#  created_at :datetime
#  updated_at :datetime
#  state      :string
#

require 'rails_helper'

describe Post do
  context 'triggers :moderate! after create' do
    subject { build(:post) }

    it '' do
      expect(subject).to receive(:moderate!)

      subject.save
    end
  end


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
