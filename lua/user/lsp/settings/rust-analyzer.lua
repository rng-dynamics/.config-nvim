return {
  settings = {
    ['rust-analyzer'] = {
      checkOnSave = {
        features = "all",
        overrideCommand = {
          'cargo', 'clippy', '--workspace', '--message-format=json',
          '--all-targets', '--all-features', '--', '-Dclippy::pedantic'
        }
      }
    }
  }
}
