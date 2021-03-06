require 'rails_helper'

RSpec.describe Comment, type: :model do
  describe 'DB table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :commenter }
    it { is_expected.to have_db_column :body }
    it { is_expected.to have_db_column :article_id }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :body }
    it { should allow_value("email@addresse.foo").for(:commenter) }
    it { should_not allow_value("foo").for(:commenter) }
  end

  describe 'Factory' do
    it 'should have valid Factory' do
      expect(FactoryBot.create(:article)).to be_valid 
    end
  end
end
