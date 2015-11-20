class TodoController < ApplicationController
    after_action :all_usr_todos, only: [ :create ]
    before_action :require_user, only: [:show]
    before_action :require_admin, only: [:show_all]
    respond_to :html, :js, :json

    def create
        @todo = Todo.create({ 
                                name: params[ :name ],
                                course: params[ :course ],
                                dueDate: params[ :dueDate ],
                                estTime: params[ :estTime ],
                                description: params[ :description ],
                                priority: params[ :priority ],
                                user_id_id: session[ :user_id_id ]
                            })

        if @todo.save
            respond_with do |format|
                format.js {
                    if request.xhr?
                        render :partial => "todo/show", :locals => { :todo => @todo }, :layout => "todo/show", :status => :created
                    end
                }
            end
        end
    end

    def new
        @todo = Todo.new

        respond_with do |format|
            format.html { 
                render :partial => "todo/new", :locals => { :todo => @todo }, :layout => false 
            }
            format.js {
                render :partial => "todo/new", :locals => { :todo => @todo }, :layout => false 
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
