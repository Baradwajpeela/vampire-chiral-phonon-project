//-------------------------------------------------------------------------
// Povray file generated using vampire
//-------------------------------------------------------------------------
#version 3.5;
#include "colors.inc"
#include "metals.inc"
#include "screen.inc"
//-----------------------------------------------------------------------------------
// Camera parameters
//-----------------------------------------------------------------------------------
#declare LX = 0; // camera looking position
#declare LY = 0;
#declare LZ = 0;
// camera location
#declare cam_theta  = 51.3195; // angle from z in degrees
#declare cam_phi    = 45; // angle from x in degrees
#declare cam_radius = 387.207; // distance from origin
#declare CX = cam_radius * cos(cam_phi*pi/180.0) * sin(cam_theta*pi/180.0);
#declare CY = cam_radius * sin(cam_phi*pi/180.0) * sin(cam_theta*pi/180.0);
#declare CZ = cam_radius * cos(cam_theta*pi/180.0);
Set_Camera(<CX,CY,CZ>, <LX,LY,LZ>, 15)
Set_Camera_Aspect(4,3)
Set_Camera_Sky(<0,0,1>)
//-----------------------------------------------------------------------------------
// Global constants and appearance
//-----------------------------------------------------------------------------------
global_settings { assumed_gamma 2.0 }
background { color Gray30 } // background  colour
light_source { <2*CX, 2*CY, 2*CZ> color White} // lights
#declare Initial_Frame = 0;
#declare Final_Frame = 99999999;

//------------------------------------------
// Global settings for appearance
//------------------------------------------

#declare ref = 0.05; // reflection level of objects
#declare dif = 1.0; // diffuse level of objects
#declare amb = 0.1; // ambient level of objects

// spin scale (default 2.0)
#declare global_spin_scale = true;
#declare sscale = 2.0;

// radius scale (default 1.2)
#declare global_radius_scale = true;
#declare rscale = 1.2;

// cube scale (default 1.2)
#declare global_cube_scale = true;
#declare cscale = 3.54;

// global objects
#declare global_cones   = false;
#declare global_arrows  = true;
#declare global_spheres = true;
#declare global_cubes   = false;

// non-magnetic element colours
#declare global_non_magnet_colour = true;
#declare nmcolour = pigment {color rgb < 0.2 0.2 0.2 >};

//-----------------------------------------------------------------------------------
// Colour macro
// The default is vdc generated and takes rgb values, but can be overridden to
// apply non-linear colour scales, colour maps etc.
//-----------------------------------------------------------------------------------
#macro spinrgb(sx, sy, sz, cr, cg, cb)
   pigment {color rgb <cr cg cb>}
#end

// alternative colour schemes
//#include "util/povray_colours/jet.inc"
//#include "util/povray_colours/purple_white.inc"
//#include "util/povray_colours/blue_gold.inc"
//#include "util/povray_colours/color_wheel.inc"

//-----------------------------------------------------------------------------------
// Material 1	Name: CGT	Element: Cr
//-----------------------------------------------------------------------------------
#if(global_spin_scale) #declare sscale1 = sscale;
#else #declare sscale1 = 2; #end
#if(global_radius_scale) #declare rscale1 = rscale;
#else #declare rscale1 = 1.2; #end
#if(global_cube_scale) #declare cscale1 = cscale;
#else #declare cscale1 = 3.54; #end
#if(global_cones)   #declare cones1 = global_cones;   #else #declare cones1 = false; #end
#if(global_cubes)   #declare arrows1 = global_arrows;  #else #declare arrows1 = true;  #end
#if(global_spheres) #declare spheres1 = global_spheres; #else #declare spheres1 = true;  #end
#if(global_cubes)   #declare cubes1 = global_cubes;   #else #declare cubes1 = false; #end
#declare spincolors1 = true; // enable colours defined in vdc
#declare spincolor1  = pigment {color rgb < 0.1 0.1 0.1 >};
//-------------------------------------
#macro spinm1(cx,cy,cz,sx,sy,sz, cr,cg,cb)
union{
   #if(spheres1) sphere {<cx,cy,cz>,0.5*rscale1} #end
   #if(cubes1) box {<cx-cscale1*0.5,cy-cscale1*0.5,cz-cscale1*0.5>,<cx+cscale1*0.5,cy+cscale1*0.5,cz+cscale1*0.5>} #end
   #if(cones1) cone {<cx+0.5*sx*sscale1,cy+0.5*sy*sscale1,cz+0.5*sz*sscale1>,0.0 <cx-0.5*sx*sscale1,cy-0.5*sy*sscale1,cz-0.5*sz*sscale1>,sscale1*0.5} #end
   #if(arrows1)
      cylinder {<cx+sx*0.5*sscale1,    cy+sy*0.5*sscale1,    cz+sz*0.5*sscale1>
                <cx-sx*0.5*sscale1,    cy-sy*0.5*sscale1,    cz-sz*0.5*sscale1>,sscale1*0.12}
      cone     {<cx+sx*0.5*1.6*sscale1,cy+sy*0.5*1.6*sscale1,cz+sz*0.5*1.6*sscale1>,sscale1*0.0
                <cx+sx*0.5*sscale1,    cy+sy*0.5*sscale1,    cz+sz*0.5*sscale1    >,sscale1*0.2}
   #end
   #if(spincolors1) texture { spinrgb(sx,sy,sz,cr,cg,cb) finish {reflection ref diffuse dif ambient amb } }
   #else texture { spincolor1 finish {reflection ref diffuse dif ambient amb }} #end
}
#end

//----------------------------------------------------------------
// Include spin and sticks data
//----------------------------------------------------------------
#include concat("spins-", str(frame_number, -8, 0) ".inc")
