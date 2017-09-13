class ContatosController < ApplicationController
  def index
  	@contatos = Contato.all
  end

  def new
  end

  def show
    @contato = Contato.find(params[:id])
  end

  def edit
	@contato = Contato.find(params[:id])
  end
  
  def destroy
	@contato = Contato.find(params[:id])
	@contato.destroy
	 
	redirect_to contatos_path
  end

   def update
    @contato = Contato.find(params[:id])
 
    if @contato.update(contato_params)
      redirect_to contatos_path
    else
      render 'edit'
    end
  end


  def create
    @contato = Contato.new(contato_params)
 
	@contato.save
	redirect_to @contato
  end

 private
  def contato_params
    params.require(:contato).permit(:nome, :endereco, :email, :dataNascimento)
  end

end
