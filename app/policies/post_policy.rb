class PostPolicy < ApplicationPolicy
    def new
        @post = Post.new
        authorize @post
    end
    def create
        @post=Post.new
        authorize @post
    end
    def create?
        user
    end
    def update?
        record.user_id == user.id
    end
    def destroy?
        update?
    end
end
