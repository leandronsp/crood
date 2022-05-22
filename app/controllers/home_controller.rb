require './config/database'

class HomeController < Chespirito::Controller
  VIEWS_PATH = './app/views'

  def index
    email = request.cookies['email']
    user  = Database.users[email]

    if user
      body = view("#{VIEWS_PATH}/home.html") .gsub(/{{email}}/, email)
    else
      body = view("#{VIEWS_PATH}/login.html")
    end

    response.status = 200
    response.headers['Content-Type'] = 'text/html'
    response.body = body
  end
end
