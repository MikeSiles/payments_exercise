module ErrorSerializer

	def error_serializer(resource)
		{
			message: "Unable to process request",
			details: resource.errors&.full_messages
		}
	end
end
