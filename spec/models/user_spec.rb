require 'rails_helper'

  describe User do
    describe '#create' do

      #1 全部入力があれば、ログインできる。
      it "is valid with a firstname, lastname, nickname, email,password, password_confirmation, image" do
        user = build(:user)
        expect(user).to be_valid
      end

      #2 firstnameがからの場合不可
      it "is invalid without a firstname" do
        user = build(:user, firstname: "")
        user.valid?
        expect(user.errors[:firstname]).to include("can't be blank")
      end
      
      #3 lastnameがからの場合不可
      it "is invalid without a lastname" do
        user = build(:user, lastname: "")
        user.valid?
        expect(user.errors[:lastname]).to include("can't be blank")
      end

      #4 nicknameがからの場合不可
      it "is invalid without a nickname" do
        user = build(:user, nickname: "")
        user.valid?
        expect(user.errors[:nickname]).to include("can't be blank")
      end

      #5 emailがからの場合不可
      it "is invalid without a email" do
        user = build(:user, email: "")
        user.valid?
        expect(user.errors[:email]).to include("can't be blank")
      end

      #6 imageがからの場合不可
      it "is invalid without a image" do
        user = build(:user, image: "")
        user.valid?
        expect(user.errors[:image]).to include("can't be blank")
      end
 
    end
  end
