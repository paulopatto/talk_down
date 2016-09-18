# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#  email      :string
#  state      :string
#

require 'rails_helper'

describe Topic do
  context 'Validations' do
    it "presence :body" do
      is_expected.to validate_presence_of :body
    end

    it "presence :title" do
      is_expected.to validate_presence_of :title
    end

    it "presence :email" do
      is_expected.to validate_presence_of :email
    end
  end

  # Seria a pasta spec/accepatance
  context 'Each thread (`Topic`)' do
    # Ok, Eu sei que de acordo com o BetterSpecs as mensagens com 'should' devem
    # ser evitadas, mas aqui estou apenas transcrevendo as features solicitadas.

    subject { described_class.new }

    it 'should have the text body' do
      expect(subject).to be_respond_to :body
    end

    it 'should have email who created' do
      expect(subject).to be_respond_to :email
    end
  end
end
