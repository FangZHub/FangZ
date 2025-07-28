-- สร้างตารางเก็บ PlaceId และลิงก์ของสคริปต์
local allowedMaps = {
    [13827198708] = "https://raw.githubusercontent.com/FangZHub/FangZ/refs/heads/main/FangZ-Hub-Pull-a-Sword.lua", -- Pull a SwordV2
}

-- ตรวจสอบ PlaceId ของแมพที่กำลังเล่น
local placeId = game.PlaceId

-- เช็คว่า PlaceId ที่กำลังเล่นอยู่มีในลิสต์ที่อนุญาตไหม
if allowedMaps[placeId] then
    -- โหลดและรันสคริปต์จาก URL
    loadstring(game:HttpGet(allowedMaps[placeId]))()
else
    -- ถ้า PlaceId ไม่ตรงกับที่กำหนด, เตะผู้เล่นออกจากเกม
    game:Shutdown()
end
