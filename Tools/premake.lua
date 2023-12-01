workspace "CutOfMeal"
configurations { "Debug", "Release" }
location "../Build"

defines { "WORKSPACE" }

project "Engine"
kind "ConsoleApp"
language "C++"
location "../Build/Engine"

local source_path = "../Build/"

files {
  source_path .. "*.h",
  source_path .. "*.hpp",
  source_path .. "*.c",
  source_path .. "**.cpp"
}

defines { "ENGINE" }
