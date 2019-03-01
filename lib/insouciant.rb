require_relative "insouciant/version"

class Object

  private

  # Run some code with (almost) no worries.
  def insouciant(error_value = nil)
    yield
  rescue => err
    error_value || err.to_s
  end
end
