class TodoController < ApplicationController
    before_action :all_todos, only: [ :create ]
    before_action :require_user, only: [:show]
    before_action :require_admin, only: [:show_all]

    def create
        @todo = Todo.create( 
                            name: params[ :name ],
                            course: params[ :course ],
                            dueDate: params[ :dueDate ],
                            estTime: params[ :estTime ],
                            description: params[ :description ],
                            user_id_id: params[ :user_id ],
                        )
    end

    def new
        @todo = Todo.new

        respond_to do |format|
            format.html { render "form" }
        end
    end

    def destroy

    end

    def index
        @todos = Todo.all
    end

    def show
        @todos = Todo.where( :user_id => session[ :user_id_id ] )
    end

    private

    def all_usr_todos
        @todos = Todo.where( :user_id => params[ :id ] )
    end
end
