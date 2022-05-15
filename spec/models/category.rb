require 'rails_helper'

RSpec.describe Category, type: :model do
  describe '#label_to_ja' do
    let(:category) { create(:category, :food) }

    context 'labelがfoodの場合' do
      it '「食費」が返る' do
        expect(category.label_to_ja).to eq '食費'
      end
    end
  end
end
