module Api
  class V1::SessionsController < ApiController
    def create
      user = User.find_by(email: session_params[:email])

      if user&.authenticate(session_params[:password])
        token = Jwt::TokenProviderService.call(user_id: user.id)
        render json: ActiveModelSerializers::SerializableResource.new(user, serializer: UserSerializer).as_json.deep_merge(user: { token: token })
      else
        render json: { error: { messages: ['mistake email or password'] } }, status: :unauthorized
      end
    end

    def destroy
    end

    private

    def session_params
      params.require(:session).permit(:email, :password)
    end
  end
end
