require 'sinatra'

get '/' do
  # hello
  @varaible_for_view = 'Hi! I am a variable. the @ at the beginning will make it accessible in the erb/view file.'
  @people = ["Jonathan", "Joel", "Jarrett"]
  erb :index, layout: :main
end

get '/years' do
  # code!
  @years_para = 'I have been alive for 21 years.'
  # @years = (1995..2016).to_a
  @years = [1995, 1996, 1997, 1998, 1999, 2000, 2001, 2002, 2003, 2004, 2005, 2006, 2007, 2008, 2009, 2010, 2011, 2012, 2013, 2014, 2015, 2016]
  erb :years, layout: :main
end

get '/states' do
  # code!
  @states_para = 'I have visited the following states:'
  @states = ["maryland", "california", "illinois", "indiana", "washington"]
  @states.sort
  @states.sort!
  erb :states, layout: :main
end
