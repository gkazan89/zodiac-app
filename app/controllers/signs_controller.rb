class SignsController < ApplicationController
  def index
    @signs = Sign.all
    render "index.json.jbuilder"
  end

  def show
    @sign = Sign.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @sign = Sign.new(
      name: params[:name],
      planet: params[:planet],
      mascot: params[:mascot],
      )
    @sign.save
    render "show.json.jbuilder"
  end

  def update
    @sign = Sign.find_by(id: params[:id])
    @sign.name = params[:name] || @sign.name
    @sign.planet = params[:planet] || @sign.planet
    @sign.mascot = params[:mascot] || @sign.mascot
    @sign.save
    render "show.json.jbuilder"
  end

  def destroy
    @sign = Sign.find_by(id: params[:id])
    @sign.destroy
    render json: {message: "Sign Eliminated"}
  end

end
