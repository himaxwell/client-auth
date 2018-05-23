module ClientAuth
  class ErrorSerializer
    def self.serialize(error)
      err = {status: error.status.to_s, title: error.title, detail: error.detail}
      serialization = {errors: [err]}
      serialization.to_json
    end

    def self.deserialize(data)
      attrs = JSON.parse(data)['errors'].first
      klass = attrs['title'].constantize
      klass.new(attrs['status'], attrs['detail'])
    rescue StandardError
      ::ClientAuth::Errors::InternalServerError.new(data)
    end
  end
end
