require_relative "insouciant/version"

class Object

private

  # Run some code with (almost) no worries.
  def insouciant(error_value = :insouciant_default)
    old_verbose = $VERBOSE
    $VERBOSE = nil
    yield
  rescue => err
    (error_value == :insouciant_default) ? err.to_s : error_value
  ensure
    $VERBOSE = old_verbose
  end

end
