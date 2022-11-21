class BooksController < ApplicationController
before_action :set_book, only: [:edit, :update, :destroy,:show]
def index
    @books = Book.all
end

def new 
    @book = Book.new
end

def create 
    @book = Book.new(params.require(:book).permit(:name , :author,:description ,:publish_year ,:rating))
    @book.save
    redirect_to books_path(@book)
end

def edit
    @book = Book.find(params[:id])
end
def update 
    @book = Book.find(params[:id])
    @book.update(params.require(:book).permit(:name , :author ,:description ,:publish_year ,:rating))
    redirect_to books_path(@book)
end
def destroy 
# @book = Book.find(params[:id])
    @book.destroy
    redirect_to books_path
end

def set_book
    @book = Book.find(params[:id])
end

def show
    
end


end