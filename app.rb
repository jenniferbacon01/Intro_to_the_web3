require 'sinatra'
require 'shotgun'

get '/' do
  "Hello World"
end

get '/secret' do
   "1= Hipity Hop Karaoke
2 =Overexcited fat kid on a trampoline throwing up blue slushie and Harribo
3= Noisy Kids on a bus
5= Local Recyling Policy
7= Outing to the Post Office
9= Beetle Drive
10= A Funeral"
end

get '/cat' do
  erb(:index)
end
