class PostsController < ApplicationController
    
    before_action :find_post, only: [:show, :edit, :update, :destroy]
    
    def index
        @posts = Post.all.order(created_at: :desc)
        @pdfs = Dir.glob(Rails.root.join('public/pdf', '*.pdf'))
    end
    
    def show
        @feedbacks = @post.feedbacks.all
       # @currentUserFeedback = @feedbacks.find_by(id: current_user.id) if current_user
        
    end
    
    def new
        @post = Post.new 
    end
    
    def create
        @post = Post.new(post_params)
        
        if @post.save
          redirect_to @post, notice: “投稿が完了しました。”
        else 
          render ‘new’
        end
        
    end
    
    def edit
        
    end
    
    def update
        if @post.update(post_params)
          redirect_to @post, notice: “更新が完了しました。”
        else
          render ‘edit’
        end
    end
    
    def destroy
        @post.destroy
        redirect_to root_path, notice: “記事が削除されました。”
    end
    
    
    
    
    private
        
        def post_params
            params.require(:post).permit(:title, :content, :user_id)
        end
        
        def find_post
            @post = Post.find(params[:id])
        end
    
end
