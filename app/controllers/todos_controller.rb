class TodosController < ApplicationController
    before_action :require_user, only: [:show]
    before_action :require_admin, only: [:show_all]
    respond_to :html, :js

    def create
        @todo = Todo.new( {
            name: params[ :todo ][ :name ],
            course: params[ :todo ][ :course ],
            dueDate: Date.strptime(params[ :todo ][ :dueDate ], "%m/%d/%Y"),
            estTime: params[ :todo ][ :estTime ],
            description: params[ :todo ][ :description ],
            priority: params[ :todo ][ :priority ],
            user_id_id: session[ :user_id_id ]
        })

        respond_to do |format|
            if @todo.save
                format.html {
                    render :layout => nil
                }
                format.js {
                    render :layout => nil
                }
            end
        end
    end

    def new
        @todo = Todo.new

        respond_with do |format|
            format.html { 
                render :partial => "todos/new", :locals => { :todo => @todo }, :layout => false 
            }
            format.js {
                render :partial => "todos/new", :locals => { :todo => @todo }, :layout => false 
            }
        end
    end

    def destroy

    end

    def index
        @todos = Todo.all
    end

    def show
        @todos = Todo.where( :user_id_id => session[ :user_id_id ] )
    end

    private

    def all_usr_todos
        @todos = Todo.where( :user_id_id => session[ :user_id_id ] )
    end
end
