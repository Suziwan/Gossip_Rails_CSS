class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all.order(:id)
  end

  def show
    @gossip = Gossip.find(params[:id])
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
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(post_params)
    redirect_to gossip_path
  end

  def destroy
    puts "*" * 60
    puts "test destroy OK"
    puts "*" * 60
  end
end
