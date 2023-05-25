class ComicbooksController < ApplicationController

    before_action :set_comicbook, only: %i[ show update destroy ]

    def index
        @comicbooks = Comicbook.all
        render json: @comicbooks
    end

    def show
        render json: @comicbook
    end

    def create
        @comicbook = Group.new(comicbook_params)

        if @comicbook.save
            render json: @comicbook, status: :created, location: @comicbook
        else
            render json: @comicbook.errors, status: :unprocessable_entity
        end
    end

    def update
        if @comicbook.update(comicbook_params)
            render json: @comicbook
        else
            render json: @comicbook.errors, status: :unprocessable_entity
        end
    end

    def destroy
        @comicbook.destroy
    end

    private

        def set_comicbook
            @comicbook = Comicbook.find(params[:id])
        end

        def comicbook_params
            params.require(:comicbook).permit(:title, :number, :description, :image_url, :artist, :writer, :publisher_id)
        end

end
