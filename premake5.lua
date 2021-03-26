project "ImGui"
    kind "StaticLib"
    language "C++"

    targetdir ("bin/" .. outputdir .. "%{prj.name} ")
    objdir ("bin-int/" .. outputdir .. "%{prj.name} ")

    files {
        "imconfig.h",
        "imgui.h",
        "imgui.cpp",
        "imgui_draw.cpp",
        "imgui_internal.cpp",
        "imgui_widgets.cpp",
        "imstb_rectpack.h",
        "imgstb_textedit.h",
        "imgstb_truetype.h",
        "imgui_demo.cpp"
    }
    
    filter "system:windows"
        systemversion "latest"
        cppdialect "C++17"
        staticruntime "on"
         
    filter { "system:windows", "configurations:Release" }
        buildoptions "/MT"
