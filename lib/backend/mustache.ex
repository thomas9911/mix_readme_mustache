defmodule MixReadme.Backend.Mustache do
  @behaviour MixReadme.Backend

  @readme_templates ["./readme", "./README", "./Readme"]
  @file_extensions [".mustache"]

  @default_template "# {{ module_name }}\n\n{{ module_doc }}"

  @impl true
  def render!(template, opts) do
    Mustache.render(template, opts)
  end

  @impl true
  def readme_templates do
    Enum.flat_map(@readme_templates, fn path ->
      Enum.map(@file_extensions, fn ext ->
        "#{path}#{ext}"
      end)
    end)
  end

  @impl true
  def default_template, do: @default_template
end
