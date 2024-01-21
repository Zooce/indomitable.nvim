# indomitable.nvim

> This is a work in progress!

A colorscheme that my eyes actually like.

I'm trying to go for less colors, higlighting things more generally.

## Strings and Constants

These have the most contrast with the background, highlighting them in a sense. These have their own colors, light green for strings and cyan for constants.

## Functions

Functions are important to highlight so they have thir own color, which is an orange-ish color, with a lot of contrast to the background.

## Keywords (and operators)

To me, keywords are actually not as important (not to say they're NOT important), so they are red which has significantly less contrast with the background than other highlights.

Why? Because keywords are very common, so in whatever language you're using, you know what they are so there's no need make them very bright.

## Comments

I have a bit of a different approach to comments compared to other themes, because I think comments are important. Most colorschemes treat comments as something you don't really want to see so they gray them out and blend them with the background. To me this is contradicts the point of adding a comment in your code - you're telling the human reader something important (otherwise you wouldn't have added a comment).

So, comments are blue which I find to be a good balance of contrast with the background and not overpowering the other brighter highlights in the code.

## Installation

Here's how I have `indomitable.nvim` installed with lazy.nvim:

```lua
{
  'Zooce/indomitable.nvim',
  config = function()
    require('indomitable')
    vim.cmd [[colorscheme indomitable]]
  end,
}
```
