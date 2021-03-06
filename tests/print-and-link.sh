#!/usr/bin/env zunit

@setup {
  load ../.support/print-and-link.sh
  dir="$(mktemp -d)"
  cd ${dir}
}

@teardown {
  rm -rf ${dir}
}

@test 'Linking works correctly' {
  touch foo
  run _printAndLink foo bar

  assert ${dir}/bar is_link
  assert "${output}" matches 'foo.*bar'
}
