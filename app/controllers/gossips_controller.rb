class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all.order(:id)
  end

  def show
    @gossip = Gossip.find(params[:id])
    @author = User.find(@gossip.user_id)
  end

  def new
    @gossip = Gossip.new(title: params[:title], content: params[:content]) 
  end

  def create
    @gossip = Gossip.new(title: params[:title], content: params[:content], user_id: rand(1..10))

    if @gossip.save # essaie de sauvegarder en base @gossip
      redirect_to gossips_path # si ça marche, il redirige vers la page d'index du site
    else
      render 'gossips/new' # sinon, il render la view new (qui est celle sur laquelle on est déjà)
    end
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
    @gossip = Gossip.find(params[:id])
    post_params = params.require(:gossip).permit(:title, :content)
    @gossip.update(post_params)
    redirect_to gossips_path
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to gossips_path
  end
end
