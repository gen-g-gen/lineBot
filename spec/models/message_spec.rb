require 'rails_helper'

  describe Message do
    describe '#create' do

      #1 全部入力があれば、ログインできる。
      it "is valid with a content" do
        message = build(:message)
        user = create(:user)
        group = create(:group)
        expect(message).to be_valid
      end

      #2 contentがからの場合不可
      it "is invalid without a content" do
        message = build(:message, content: "")
        message.valid?
        expect(message.errors[:content]).to include("can't be blank")
      end

    end
  end
