-- premake5.lua
workspace "CutOfMeal"
  configurations { "Debug", "Release" }
  location "../Build"

project "Engine"
  kind "ConsoleApp"
  language "C++"
  location "../Build/MyProject"