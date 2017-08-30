require "sinatra"
require "make_todo"

get '/' do
  @tasks = Tarea.all
  erb :index
end

post '/' do
	@task = Tarea.create("#{params["title"]}")
	redirect '/'
end

get '/completar/:id' do
	task_u = Tarea.update(params["id"])
	redirect '/'
end

get '/delete/:id' do
	task_u = Tarea.destroy(params["id"])
	redirect '/'
end
