project "benchmark"
	kind "StaticLib"
	language "C++"
	staticruntime "off"
	
	targetdir "bin"
	objdir "lib"
	
	includedirs "%{prj.location}/include"
	
	files
	{
		"src/*.cc",
		"src/*.h"
	}
	
	removefiles
	{
		"src/benchmark-main.cc"
	}
	
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
		
	filter "configurations:Release"
		runtime "Release"
		optimize "on"