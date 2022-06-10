Rails.application.routes.draw do
    get"tasks" => "tasks#index"
    get"tasks/new" => "tasks#new"
    get"tasks/edit" => "tasks#edit"
    
    resources:tasks
end
