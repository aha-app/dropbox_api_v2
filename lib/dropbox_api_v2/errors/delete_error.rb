module DropboxApiV2::Errors
  class DeleteError < BasicError
    ErrorSubtypes = {
      :path_lookup => LookupError,
      :path_write => WriteError
    }.freeze
  end
end
