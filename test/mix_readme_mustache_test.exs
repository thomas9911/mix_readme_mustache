defmodule MixReadme.Backend.MustacheTest do
  use ExUnit.Case

  test "backend works" do
    opts = %{module_name: "Testing", module_doc: "This is some text"}

    assert "# Testing\n\nThis is some text" ==
             MixReadme.Backend.Mustache.default_template()
             |> MixReadme.Backend.Mustache.render!(opts)
  end

  test "paths" do
    assert MixReadme.Backend.Mustache.readme_templates()
           |> Enum.any?(fn x -> x == "./readme.mustache" end)
  end
end
