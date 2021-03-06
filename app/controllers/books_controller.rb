class BooksController < ApplicationController
  def index
  	@books = Book.all
       @book = Book.new
  end

  def show

  	@book = Book.find(params[:id])

  end

  # def new
  # 	@book = Book.new
  # end

  def edit
        @book = Book.find(params[:id])
  end

  def destroy
        book = Book.find(params[:id])
        book.destroy
        redirect_to books_path
  end

  def update
        book = Book.find(params[:id])
        if book.update(book_params)
           flash[:good] = "Book was successfully updated."
           redirect_to book_path(book.id)
        else
           render action 'edit'
        end
  end


  def create
        # ストロングパラメーターを使用
        @book = Book.new(book_params)
        # DBへ保存する
        if @book.save
           flash[:success] = "Book was successfully created."
           redirect_to book_path(@book.id)
        else
            # redirect_to bookers_path
            @books = Book.all

            render 'index'
        end
  end

    private
    def book_params
        params.require(:book).permit(:title, :body)
    end
end
