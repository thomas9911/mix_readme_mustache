REM Because for reasons the module can not be loaded when using mix readme. (It gets loaded in external projects)
mix run -e "Mix.Tasks.Readme.run([])" > README.md