class Base < Grape::API
    prefix 'api'
    mount Hello
  end