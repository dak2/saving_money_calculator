require 'rails_helper'

RSpec.describe Saving, type: :model do
  describe '#total_savings_by_user' do
    subject { Saving.total_savings_by_user }
    context 'savingが複数存在する場合' do
      let(:user) { create(:user) }
      let(:response) { { user => 2000 } }

      before do
        2.times do |_i|
          create(:saving, money: 1000, user: user)
        end
      end

      it '集計結果が返る' do
        expect(subject).to eq response
      end
    end

    context 'savingが存在しない場合' do
      it '集計結果が返らない' do
        expect(subject).to be_empty
      end
    end
  end
end
