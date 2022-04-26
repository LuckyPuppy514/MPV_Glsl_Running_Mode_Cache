-- author: LuckyPuppy514
-- date: 2022-04-24
-- source: 

-- add config to input.conf first
--[[

## 着色器模式 GLSL MODEL: Glsl_Running_Mode_Cache.lua
 CTRL+1 script-binding Glsl_Model_1
 CTRL+2 script-binding Glsl_Model_2
 CTRL+3 script-binding Glsl_Model_3
 CTRL+4 script-binding Glsl_Model_4
 CTRL+5 script-binding Glsl_Model_5
 CTRL+6 script-binding Glsl_Model_6
 CTRL+7 script-binding Glsl_Model_7
 CTRL+8 script-binding Glsl_Model_8
 CTRL+9 script-binding Glsl_Model_9
 CTRL+0 script-binding Glsl_Model_0
 
    --]]

-- glsl mode list
Glsl_Model_List = {
	-- Anime4K Official Config: https://github.com/bloc97/Anime4K/blob/master/md/GLSL_Instructions_Windows.md
	-- Anime4K: Mode A (Fast)
	Glsl_Model_1 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Restore_CNN_M.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_M.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	-- Show Text On OSD
	" show-text \"Anime4K: Mode A (Fast)\"",
	
	-- Anime4K: Mode B (Fast)
	Glsl_Model_2 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Restore_CNN_Soft_M.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_M.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	" show-text \"Anime4K: Mode B (Fast)\"",
	
	-- Anime4K: Mode C (Fast)
	Glsl_Model_3 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Upscale_Denoise_CNN_x2_M.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	" show-text \"Anime4K: Mode C (Fast)\"",
	
	-- Anime4K: Mode A+A (Fast)
	Glsl_Model_4 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Restore_CNN_M.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_M.glsl;~~/shaders/Anime4K_Restore_CNN_S.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	" show-text \"Anime4K: Mode A+A (Fast)\"",
	
	-- Anime4K: Mode B+B (Fast)
	Glsl_Model_5 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Restore_CNN_Soft_M.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_M.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Restore_CNN_Soft_S.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	" show-text \"Anime4K: Mode B+B (Fast)\"",
	
	-- Anime4K: Mode C+A (Fast)
	Glsl_Model_6 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Upscale_Denoise_CNN_x2_M.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Restore_CNN_S.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	" show-text \"Anime4K: Mode C+A (Fast)\"",
	
	-- Anime4K: Mode C+A (Fast)
	Glsl_Model_7 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/Anime4K_Clamp_Highlights.glsl;~~/shaders/Anime4K_Upscale_Denoise_CNN_x2_M.glsl;~~/shaders/Anime4K_AutoDownscalePre_x2.glsl;~~/shaders/Anime4K_AutoDownscalePre_x4.glsl;~~/shaders/Anime4K_Restore_CNN_S.glsl;~~/shaders/Anime4K_Upscale_CNN_x2_S.glsl\";" ..
	" show-text \"Anime4K: Mode C+A (Fast)\"",
	
	-- KrigBilateral（速度较慢，高级色度还原，极高质量但感知很弱）
	Glsl_Model_8 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/KrigBilateral.glsl\";" ..
	" show-text \"KrigBilateral\"",
	
	-- AMD-FSR（速度很快，放大到目标分辨率，伴随对比度自适应锐化）
	Glsl_Model_9 = 
	"no-osd change-list glsl-shaders set \"~~/shaders/AMD-FSR.glsl\";" ..
	" show-text \"AMD-FSR\"",
	
	-- 清除着色器配置 remove all gsls config
	Glsl_Model_0 = "no-osd change-list glsl-shaders clr \"\"; show-text \"GLSL shaders cleared\""
}


Project_Config = {
	Cache_File_Name = "glsl_mode.cache",
	This_Lua_Name = "Glsl_Running_Mode_Cache.lua"
}

-- key event
function glsl_Model_1()
	change_Mode(Glsl_Model_List.Glsl_Model_1)
end
function glsl_Model_2()
	change_Mode(Glsl_Model_List.Glsl_Model_2)
end
function glsl_Model_3()
	change_Mode(Glsl_Model_List.Glsl_Model_3)
end
function glsl_Model_4()
	change_Mode(Glsl_Model_List.Glsl_Model_4)
end
function glsl_Model_5()
	change_Mode(Glsl_Model_List.Glsl_Model_5)
end
function glsl_Model_6()
	change_Mode(Glsl_Model_List.Glsl_Model_6)
end
function glsl_Model_7()
	change_Mode(Glsl_Model_List.Glsl_Model_7)
end
function glsl_Model_8()
	change_Mode(Glsl_Model_List.Glsl_Model_8)
end
function glsl_Model_9()
	change_Mode(Glsl_Model_List.Glsl_Model_9)
end
function glsl_Model_0()
	change_Mode(Glsl_Model_List.Glsl_Model_0)
end

-- change glsl mode
function change_Mode(mode)
	local current_path = string.sub(debug.getinfo(1).source, 2, (string.len(Project_Config.This_Lua_Name) + 9) * -1)
    writeFile(current_path .. Project_Config.Cache_File_Name, mode)
	mp.command(mode)
end

-- load glsl mode
function load_Glsl_Mode()
	local current_path = string.sub(debug.getinfo(1).source, 2, (string.len(Project_Config.This_Lua_Name) + 9) * -1)
	local f,err = io.open(current_path .. Project_Config.Cache_File_Name, "r+")
	if f == nil then writeFile(current_path .. Project_Config.Cache_File_Name, Glsl_Model_List.Glsl_Model_0) end
	mp.command(readFile(current_path .. Project_Config.Cache_File_Name))
end


-- write file
function writeFile(fileName,content)
    local f = assert(io.open(fileName,'w'))
    f:write(content)
    f:close()
end

-- read file
function readFile(fileName)
    local f = assert(io.open(fileName,'r'))
    local content = f:read('*all')
    f:close()
    return content
end

mp.register_event("file-loaded", load_Glsl_Mode)
mp.add_key_binding(nil, "Glsl_Model_1", glsl_Model_1)
mp.add_key_binding(nil, "Glsl_Model_2", glsl_Model_2)
mp.add_key_binding(nil, "Glsl_Model_3", glsl_Model_3)
mp.add_key_binding(nil, "Glsl_Model_4", glsl_Model_4)
mp.add_key_binding(nil, "Glsl_Model_5", glsl_Model_5)
mp.add_key_binding(nil, "Glsl_Model_6", glsl_Model_6)
mp.add_key_binding(nil, "Glsl_Model_7", glsl_Model_7)
mp.add_key_binding(nil, "Glsl_Model_8", glsl_Model_8)
mp.add_key_binding(nil, "Glsl_Model_9", glsl_Model_9)
mp.add_key_binding(nil, "Glsl_Model_0", glsl_Model_0)
