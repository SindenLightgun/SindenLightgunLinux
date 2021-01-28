require("model2")

function Init()
	--WhiteXBar = Video_CreateSurfaceFromFile("WhiteXBar50.png");
	--WhiteYBar = Video_CreateSurfaceFromFile("WhiteYBar50.png");	
	
	WhiteXBar = Video_CreateSurfaceFromFile("WhiteXBar25.png");
	WhiteYBar = Video_CreateSurfaceFromFile("WhiteYBar25.png");
	--BlackXBar = Video_CreateSurfaceFromFile("BlackXBar25.png");
	--BlackYBar = Video_CreateSurfaceFromFile("BlackYBar25.png");
	
	--BlueXBar = Video_CreateSurfaceFromFile("BlueXBar50.png");
	--BlueYBar = Video_CreateSurfaceFromFile("BlueYBar50.png");

	Bezel = Video_CreateSurfaceFromFile("Bezel6.png");
end

function Frame()
	
end

function PostDraw()
	width,height = Video_GetScreenSize();
	--Video_DrawText(0,-7,'--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------',0xFFFFFF);
	--Video_DrawText(0,500,'--------------------------------------------------------------------------------------------------------------------------------------------------',0xFFFFFF);
	--Video_DrawText(Video_GetScreenSize()-5,100,'|',0xFFFFFF);
	--Video_DrawText(Video_GetScreenSize(),100,'|',0xFFFFFF);
	--Video_DrawText(150,150,Video_GetScreenSize(),0xFFFFFF);
	
	
	
	--Loads a image file (.png) as surface
	--Returns a surface to use with ReleaseSurface and DrawSurface

	
	Video_DrawSurface(WhiteXBar,0,-15);
	Video_DrawSurface(WhiteYBar,-15,0);
	Video_DrawSurface(WhiteXBar,0,height-15);
	Video_DrawSurface(WhiteYBar,width-15,0);


	--Thicker border with an outer black border
	--Video_DrawSurface(WhiteXBar,0,0);
	--Video_DrawSurface(WhiteYBar,0,0);
	--Video_DrawSurface(WhiteXBar,0,height-50);
	--Video_DrawSurface(WhiteYBar,width-50,0);
	--Video_DrawSurface(BlackXBar,0,0);
	--Video_DrawSurface(BlackYBar,0,0);
	--Video_DrawSurface(BlackXBar,0,height-25);
	--Video_DrawSurface(BlackYBar,width-25,0);
	

	--Video_DrawSurface(WhiteXBar,0,3);
	--Video_DrawSurface(WhiteYBar,3,0);
	--Video_DrawSurface(WhiteXBar,0,height-6);
	--Video_DrawSurface(WhiteYBar,width-6,0);
	
	--Video_DrawSurface(WhiteXBar,0,6);
	--Video_DrawSurface(WhiteXBar,0,9);
	--Video_DrawSurface(WhiteXBar,0,12);
	--Video_DrawSurface(WhiteXBar,0,15);
	--Video_DrawSurface(WhiteXBar,0,18);
	--Video_DrawSurface(WhiteXBar,0,21);

	--Video_DrawSurface(Bezel,0,0);	
	
	--Video_DrawSurface(WhiteXBar,0,0);
	--Video_DrawSurface(WhiteYBar,0,0);
	--Video_DrawSurface(WhiteXBar,0,height-10);
	--Video_DrawSurface(WhiteYBar,width-10,0);

	--Video_DrawSurface(BlueXBar,0,0);
	--Video_DrawSurface(BlueYBar,0,0);
	--Video_DrawSurface(BlueXBar,0,height-50);
	--Video_DrawSurface(BlueYBar,width-50,0);

	--Video_DrawText(20,10,HEX32(I960_ReadWord(RAMBASE+0x10D0)),0xFFFFFF);
	--Video_DrawText(20,20,HEX32(RAMBASE),0xFFFFFF);
	--Video_DrawText(20,30,Options.cheat1.value,0xFFFFFF);
	--Video_DrawText(20,40,Input_IsKeyPressed(0x1E),0xFFFFFF);
end

function health_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0xEE70,9); -- 1P 9 health
end
function ammo_1p_cheat_f(value)
	I960_WriteWord(RAMBASE+0xEE38,6); -- 1P 6 ammo
end
Options =
{
	health_1p_cheat={name="1P Infinite Health",values={"Off","On"},runfunc=health_1p_cheat_f},
	ammo_1p_cheat={name="1P Infinite Ammo",values={"Off","On"},runfunc=ammo_1p_cheat_f}
}