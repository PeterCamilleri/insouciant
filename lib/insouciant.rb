require_relative "insouciant/version"

class Object

private

  # Run some code with (almost) no worries.
  def insouciant(error_value = :insouciant_default)
    yield
  rescue => err
    (error_value == :insouciant_default) ? err.to_s : error_value
  end

end
