require 'spec_helper'

describe UserDecorator, type: :decorator do
  let(:user) { create(:user) }
  before { ActiveDecorator::Decorator.instance.decorate user }
  subject { user.savings_by_categories }

  describe '#savings_by_categories' do
    context '紐づくカテゴリが重複しない場合' do
      before do
        %i[food commodity].each do |type|
          create(:saving, category: create(:category, type), user:)
        end
      end

      it 'ラベルごとの集計結果が全て1が返る' do
        expect(subject).to eq({ '食費' => 1, '日用品' => 1 })
      end
    end

    context '紐づくカテゴリが重複する場合' do
      before do
        %i[food food commodity].each do |type|
          create(:saving, category: create(:category, type), user:)
        end
      end

      it '重複するラベルはカウントされて集計結果が返る' do
        expect(subject).to eq({ '食費' => 2, '日用品' => 1 })
      end
    end
  end
end
