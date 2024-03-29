require("everforest").setup({
  -- Controls the "hardness" of the background. Options are "soft", "medium" or "hard".
  -- Default is "medium".
  background = "soft",
  -- How much of the background should be transparent. Options are 0, 1 or 2.
  -- Default is 0.
  --
  -- 2 will have more UI components be transparent (e.g. status line
  -- background).
  transparent_background_level = 0,
})
