class BooksController < ApplicationController
  def index
    @books=Book.page(params[:page]).per(10)  #pagination Kaminari
    @categories=Category.all
    @book = Book.new # afin d'exploiter le helper form_for
  end

  
  def show
    @book = Book.find(params[:id])
  end
  
  def create
    @book = Book.new title: params[:title], category_id: params[:category_id]
    if @book.save 
      flash[:success]= "Un nouveau livre a été créé"
      redirect_to "/books"
    else
      flash[:fail]= "Le livre existe déjà"
      @books=Book.page(params[:page]).per(10)
      @categories=Category.all
      render 'index'
      
   
    end
  end
  
  def update
    #@book = Book.find(params[:id])
    #@book.title = params[:title]
    #@book.save
    @book = Book.find(params[:id])
    if @book.update title: params[:title]
      flash[:success]="Mise à jour effectuée"
      redirect_to "/books/#{params[:id]}"  #on est obligé de faire le else car un redirect vide les variables remplies et donc le message d'erreur du book qu'on ne peut plus afficher apèrs la redirection
    else
      render 'show'
    end
  end

  def destroy
    #@book = Book.find(params[:id])
    #@book.title = params[:title]
    #@book.save
    Book.find(params[:id]).delete 
    redirect_to "/books"
  end  
  
end
