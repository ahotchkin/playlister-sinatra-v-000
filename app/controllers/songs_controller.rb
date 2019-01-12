class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'/songs/index'
  end

  get '/songs/new' do
    @artists = Artist.all
    @genres = Genre.all
    erb :'/songs/new'
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'/songs/show'
  end

  post '/songs' do
<<<<<<< HEAD
    @song = Song.create(name: params[:song_name])
    if !params[:artist_name].empty?
      @song.artist << Artist.create(name: params[:artist_name])
    end
    flash[:notice] = "Successfully created song."
=======
    @song = Song.create(params[:song])
    if !params[:artist][:name].empty?
      @song.artist << Artist.create(params[:artist])
    end
>>>>>>> cb348e1480e9c1e238b1cc67c0abe15f8adfa15b
    redirect "/songs/#{@song.slug}"
  end

end
