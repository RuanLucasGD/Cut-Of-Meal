-- workspace

workspace "CutOfMeal"

defines { "WORKSPACE" }
configurations { "Debug", "Release" }
location "../Build"

-- engine

project "Engine"

defines { "ENGINE" }
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

filter { "configurations:Debug" }
defines { "DEBUG" }
targetdir "Bin/Debug"

filter { "configurations:Release" }
defines { "RELEASE" }
targetdir "Bin/Release"
