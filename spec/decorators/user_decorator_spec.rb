require 'spec_helper'

describe UserDecorator, type: :decorator do
  let(:user) { create(:user) }
  before { ActiveDecorator::Decorator.instance.decorate user }
  let!(:savings) { create_list(:saving, 2, :with_category, user:) }
  subject { user.savings_by_categories }

  describe '#savings_by_categories' do
    context 'categories#labelがnilが存在する場合' do
      before do
        savings.last.update(category_id: nil)
      end

      it 'return hash key "その他" instead of nil' do
        expect(subject).to eq({ 'category_1' => 1, 'その他' => 1 })
      end
    end

    context 'categories#labelがnilが存在しない場合' do
      it 'return hash key as they are' do
        expect(subject).to eq({ 'category_3' => 1, 'category_4' => 1 })
      end
    end
  end
end
