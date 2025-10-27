# ONLY WORKS IF A PYPROJECT.TOML IS AT PWD

def build_wheel [] {
  if ("pyproject.toml" | path exists) {
    python3 -m build --wheel --outdir .
  } else {
    print "1 | No pyproject.toml in current directory"
  }
}

build_wheel
