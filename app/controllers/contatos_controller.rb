class ContatosController < ApplicationController
  def new
    @contato = Contato.new
  end

  def create
    @contato = Contato.new(contato_params)
    if @contato.save
      redirect_to contatos_show_path, notice: 'Contato criado com sucesso.'
    else
      render :new
    end
  end

  def index
    @contatos = Contato.all
  end

  def show
    @contato = Contato.last
  end

  def contato_params
    params.require(:contato).permit(:nome, :telefone, :mensagem)
  end

  def enviar_whatsapp
    telefone = params[:telefone]
    # Remova todos os caracteres não numéricos do telefone
    telefone = telefone.gsub(/\D/, '')

    # Construa o URL do WhatsApp com o número de telefone
    whatsapp_url = "https://wa.me/+55#{telefone}"

    # Redirecione o usuário para o URL do WhatsApp
    redirect_to whatsapp_url, allow_other_host: true
  end
end
