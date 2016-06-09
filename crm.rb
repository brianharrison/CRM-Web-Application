require_relative 'contact'
require 'sinatra'

get '/' do
	@crm_app_name = "Brian's CRM"
  erb :index
end

get '/contacts' do

	erb :contacts

end

	Contact.create('Mickey', 'Mouse', 'mickey@disney.com', 'mouse')
	Contact.create('Donald', 'Duck', 'donald@disney.com', 'duck')
	Contact.create('Wily', "Coyote", 'wily@wb.com', 'coyote')
	Contact.create('Daffy', 'Duck', 'daffy@wb.com', 'duck')