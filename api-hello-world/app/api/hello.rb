class Hello < Grape::API
    format :json
    desc 'Endpoint to say hello'
    params do
        requires :name, type: String, desc: 'Name of the person to say hello to'
    end
    get :hello do
        {msg: "Hello #{params[:name]}"}
    end
end
