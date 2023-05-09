require 'swagger_helper'

RSpec.describe 'base', type: :request do
    path '/api/hello' do
        get 'hello' do
            tags 'hello'
            produces 'application/json'
            parameter name: :name, in: :query, type: :string
            response '200', 'hello world' do
                schema type: :object,
                    properties: {
                        msg: { type: :string }
                    },
                    required: [ 'name' ]
                run_test!
            end
        end
    end
end
