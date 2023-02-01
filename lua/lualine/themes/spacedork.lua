local spacedork = {}

local colors = {
  black = '#0f111b',
  white = '#ecf0c1',
  red = '#e33400',
  green = '#5ccc96',
  blue = '#00a3cc',
  purple = '#7a5ccc',
  yellow = '#f2ce00',
  gray = '#686f9a',
  darkgray = '#30365F',
  lightgray = '#c1c3cc'
}

spacedork.normal = {
  -- gui parameter is optional and behaves the same way as in vim's highlight command
  a = {bg = colors.gray, fg = colors.black, gui = 'bold'},
  b = {bg = colors.darkgray, fg = colors.lightgray},
  c = {bg = colors.black, fg = colors.lightgray}
}

spacedork.insert = {
  a = {bg = colors.green, fg = colors.black, gui = 'bold'},
  b = {bg = colors.darkgray, fg = colors.lightgray},
  c = {bg = colors.black, fg = colors.lightgray}
}

spacedork.visual = {
  a = {bg = colors.yellow, fg = colors.black, gui = 'bold'},
  b = {bg = colors.darkgray, fg = colors.lightgray},
  c = {bg = colors.black, fg = colors.lightgray}
}

spacedork.replace = {
  a = {bg = colors.purple, fg = colors.black, gui = 'bold'},
  b = {bg = colors.darkgray, fg = colors.lightgray},
  c = {bg = colors.black, fg = colors.lightgray}
}

spacedork.command = {
  a = {bg = colors.blue, fg = colors.black, gui = 'bold'},
  b = {bg = colors.darkgray, fg = colors.lightgray},
  c = {bg = colors.black, fg = colors.lightgray}
}

-- you can assign one colorscheme to another, if a colorscheme is
-- undefined it falls back to normal
spacedork.terminal = spacedork.normal

spacedork.inactive = {
  a = {bg = colors.black, fg = colors.lightgray, gui = 'bold'},
  b = {bg = colors.black, fg = colors.lightgray},
  c = {bg = colors.black, fg = colors.lightgray}
}

-- lualine.theme = spacedork
return spacedork
