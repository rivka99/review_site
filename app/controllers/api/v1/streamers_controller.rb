module Api
    module V1
        class StreamersController < ApplicationController
            protect_from_forgery with: :null_session
            def index
                streamers = Streamer.all
                render json: StreamerSerializer.new(streamers, options).serialized_json
            end

            def show
                streamer = Streamer.find_by(slug: params[:slug])
                render json: StreamerSerializer.new(streamer, options).serialized_json
            end

            def create
                streamer = Streamer.new(streamer_params)
                if streamer.save
                    render json: StreamerSerializer.new(streamer).serialized_json
                else
                    render json: {error: streamer.errors.messages}, status: 422
                end
            end 

            def update
                streamer = Streamer.find_by(slug: params[:slug])
                if streamer.update(streamer_params)
                    render json: StreamerSerializer.new(streamer, options).serialized_json
                else
                    render json: {error: streamer.errors.messages}, status: 422
                end
            end 

            def destroy
                streamer = Streamer.find_by(slug: params[:slug])
                if streamer.destroy
                    head :no_content
                else
                    render json: {error: streamer.errors.messages}, status: 422
                end
            end 

            private
            def streamer_params
                params.require(:streamer).permit(:name, :image_url)
            end

            def options
                @options ||= { include: %i[reviews] }
            end
        end
    end
end
