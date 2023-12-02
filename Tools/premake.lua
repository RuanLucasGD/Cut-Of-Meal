-- workspace

workspace "CutOfMeal"

defines { "WORKSPACE" }
configurations { "Debug64", "Release64" }
location "../Build"

-- engine

project "Engine"

defines { "ENGINE" }
kind "ConsoleApp"
language "C++"
location "../Build"

local source_path = "../Source/"

files {
  source_path .. "**.h",
  source_path .. "**.hpp",
  source_path .. "**.c",
  source_path .. "**.cpp"
}

filter { "configurations:Debug64" }
defines { "DEBUG" }
architecture "x86_64"
targetdir "../Bin/Debug"

filter { "configurations:Release64" }
defines { "RELEASE" }
architecture "x86_64"
targetdir "../Bin/Release"
