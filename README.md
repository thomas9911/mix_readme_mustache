# MixReadmeMustache

Mustache backend for MixReadme

## Installation

in `mix.exs`:
```
def deps do 
[
    {:mix_readme, "~> 0.2.0", only: :dev, runtime: false},
    {:mix_readme_mustache, "~> 0.1.0", only: :dev, runtime: false}
]
end
```

in `config/config.exs`:
```
import Config

config :mix_readme,
    backend: MixReadme.Backend.Mustache

```

## Usage 

```
mix readme > README.md
```
