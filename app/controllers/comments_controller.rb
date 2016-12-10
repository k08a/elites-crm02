class CommentsController < ApplicationController
    def index
    end
    
    def show
    end
    
    def new
    end
    
    def create
        @comment = current_user.comments.new(comment_params)
        #################課題10#########################
        # @comment = current_user.comments.build(comment_params)
        ###################ここまで####################
        
        #################課題08ーif文追加################
        if @comment.save
            redirect_to customer_path(@comment.customer_id)
        else
            @customer = @comment.customer
            @comments = @customer.comments
            render template: "customers/show"
        end
        ###################ここまで####################
    end
    
    def edit
    end
    
    def update
    end
    
    def destroy
        @comment = Comment.find(params[:id])
        customer_id = @comment.customer_id
        @comment.destroy
        redirect_to customer_path(customer_id)
        
    end
    
    private
    
    def comment_params
        # 10課題_user_id追加
        params.require(:comment).permit(:body, :customer_id, :user_id)
    end
    
end
