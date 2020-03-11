require 'rails_helper'

  describe Group do
    describe '#create' do

      #1 全部入力があれば、ログインできる。
      it "is valid with a name, image" do
        group = build(:group)
        user = create(:user)
        expect(group).to be_valid
      end

      #2 nameがからの場合不可
      it "is invalid without a name" do
        group = build(:group, name: "")
        group.valid?
        expect(group.errors[:name]).to include("can't be blank")
      end

      #3 imageがからの場合不可
      it "is invalid without a image" do
        group = build(:group, image: "")
        group.valid?
        expect(group.errors[:image]).to include("can't be blank")
      end

    end
  end
