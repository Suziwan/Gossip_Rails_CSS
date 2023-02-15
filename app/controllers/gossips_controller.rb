class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def show
    @id = params[:id].to_i
    @gossip = Gossip.find(@id)
    @author = User.find(@gossip.user_id)
  end

  def new
    puts "*" * 60
    puts "test new OK"
    puts "*" * 60
  end

  def create
    puts "*" * 60
    puts "test create OK"
    puts params
    puts "*" * 60
  end

  def edit
    puts "*" * 60
    puts "test edit OK"
    puts "*" * 60
  end

  def update
    puts "*" * 60
    puts "test update OK"
    puts "*" * 60
  end

  def destroy
    puts "*" * 60
    puts "test destroy OK"
    puts "*" * 60
  end
end
