//	Copyright (C) 2023 SASA (superaorta@gmail.com)
//	This program is free software: you can redistribute it and/or modify
//	it under the terms of the GNU General Public License as published by
//	the Free Software Foundation, either version 3 of the License, or
//	(at your option) any later version.
//	This program is distributed in the hope that it will be useful,
//	but WITHOUT ANY WARRANTY; without even the implied warranty of
//	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//	GNU General Public License for more details.
//	You should have received a copy of the GNU General Public License
//	along with this program.  If not, see <https://www.gnu.org/licenses/>.

part=-1;
$fn=150;
gap=5;

// A= cam boss across axles = "length"
// B= cam boss thickness = "thickness"
// C= cam boss between cams = "width"
// D= cable boss width = bossl
// E= cable boss height = bosst
// F= minimum crack size you want to go to = cam_to_cam

// for recent cam sets just set these to 1 to build them
WC=0;
BD=0;
DMM=0;

for_export(part);
// otherwise edit the lines below to do what you want
// if you chain camstoppas they will space automatically otherwise end with ";"
// and space manually using translate([x,y,0) in front

//-------------------------------------------------------------------------------------------------
// current cams I know about
//-------------------------------------------------------------------------------------------------

// BD zero - I've only seen one of these but this works for it!
// translate([-83,93,0])camstoppa_BD_zero();

// BD camlots from 2020 onwards all cams anodized
if(BD)translate([0,-55,0])
camstoppa_generic(width=7,thickness=10,length=23,cam_to_cam=34,name_small="C4:1",tight=.8)							// #1 camalot C4 RED
camstoppa_generic(width=13,thickness=11,length=29,cam_to_cam=41,bosst=4,bossl=13,name_small="C4:2",tight=1.2)		// #2 camalot C4 YELLOW / GOLD
camstoppa_generic(width=16,thickness=11.5,length=36,cam_to_cam=55,bosst=2,bossl=13,name="C4:3",tight=.8)			// #3 camalot C4 BLUE
camstoppa_generic(width=24,thickness=11.8,length=42.2,cam_to_cam=clear(68),bosst=4,bossl=13,name="C4:4",tight=.8);	// #4 camalot C4 BLUE

// BD camlot X4 and Z4 from 2021 onwards all cams anodized
if(BD)translate([0,-20,0])
	camstoppa_generic(width=5.5,thickness=11.25,length=20.75,cam_to_cam=clear(26.5),name_small="X4.75",tight=.8)	// BD X4 0.75 green
	camstoppa_generic(width=4.5,thickness=10.3,length=17.75,cam_to_cam=clear(21.1),name_small="Z405")	// BD Z4 0.5 camalot purple
	camstoppa_Z4_small(width=4.5,thickness=9,length=15.0,cam_to_cam=clear(16.2),name="Z404")	// BD Z4 0.4 camalot purple
	camstoppa_Z4_small(width=4.0,thickness=9,length=12.25,cam_to_cam=clear(13.5),name="")		// BD Z4 0.3 camalot blue
	camstoppa_Z4_small(width=4.0,thickness=10,length=9.4,cam_to_cam=clear(12.00),name="")		// BD Z4 0.2 camalot yellow
	camstoppa_Z4_small(width=4.0,thickness=10,length=8.5,cam_to_cam=clear(10.65),name="");		// BD Z4 0.1 camalot red

// WC new twin axle cams ~2020
if(WC)translate([0,80,0])
	camstoppa_generic(width=14.5,thickness=10.3,length=33.5,cam_to_cam=clear(55),name_small="WC:3",bosst=1.5,bossl=22)	// Big blue #3
	camstoppa_generic(width=13,thickness=10.3,length=28.5,cam_to_cam=clear(45.6),name_small="WC:2",bosst=1,bossl=16)	// gold 2
	camstoppa_generic(width=9,thickness=10.0,length=24.3,cam_to_cam=clear(33.5),name_small="WC:1");	// Red 1

// DMM DRAGON CAMS
// All measurements for dragon II except maybe the #6 which might be a dragon I
// small sizes
if(DMM)translate([0,0,0])
	camstoppa_generic(width=7,thickness=8.1,length=13.1,cam_to_cam=clear(13.7),name_small="00",tight=.8)			// blue #00
	camstoppa_generic(width=7,thickness=8.2,length=15,cam_to_cam=clear(16.4),name_small="D0",tight=.8)				// silver #0
	camstoppa_generic(width=7.5,thickness=10.3,length=19.4,cam_to_cam=clear(21),name_small="D1",tight=.8)			// purple #1
	camstoppa_generic(width=7.5,thickness=10.3,length=22,cam_to_cam=clear(25.6),name_small="DMM2",tight=.8)			// green #2
	camstoppa_generic(width=15,thickness=11,length=28,cam_to_cam=38+3,bosst=0,bossl=0,name_small="DMM4",tight=.8);	// gold #4
// large sizes
if(DMM)translate([0,30,0])
	camstoppa_generic(width=17,thickness=11.5,length=35,cam_to_cam=50+3,bosst=0,bossl=0,name_small="DMM:5",tight=.8)	// blue #5
	camstoppa_generic(width=25,thickness=12.5,length=41,cam_to_cam=68+4,bosst=0,bossl=0,name_small="DMM:6",tight=.8);	// silver #6 (nb dragon 1 maybe?)


//-------------------------------------------------------------------------------------------------
// older cams
// These all work and have been tested but it can be hard to ID the specific model YMMV
//-------------------------------------------------------------------------------------------------

//color([0,0,1]){
//// wild country cam without the black cable stiffner
//// blue sling, unanodized cams Amy's no size
//translate([-100,65,0])camstoppa_WC(depth=2,d2=8.0,l1=7,l2=5,cam_to_cam=clear(44));
//// light blue sling, unanodized cams Steve's no size
//translate([-102,30,0])camstoppa_WC(depth=1,d2=8.0,l1=9,l2=5.4,cam_to_cam=clear(40.3));
//}
//// wild country cams with black plastic cable stiffners
//color([0,0,.8]){
//// size 1 yellow cams anodized
//translate([-60,75,0])camstoppa_WC(depth=12.5/2,d2=8.0,l1=5,l2=7,cam_to_cam=clear(20));
//// size 2 red cams anodized
//translate([-60,40,0])camstoppa_WC(depth=12.5/2,d2=8.0,l1=5,l2=7,cam_to_cam=clear(30));
//// size 3.5 blue cams / blue sling
//translate([-60,0,0])camstoppa_WC(depth=12.5/2,d2=8.0,l1=5,l2=9,cam_to_cam=clear(54));
//}


//color("green"){
//// much older camalots - no thumbloop outer cams anodized, colour code sling
//// these are <probably> same sizes as the later "with thumb loop" ones
//// #0.5 camalot PURPLE Amy's
//translate([-20,30,0])camstoppa_generic(length=18.0,thickness=9.5,width=8.5,bosst=0,bossl=0,cam_to_cam=clear(21.2));
//// #2 camalot YELLOW Amy's
//translate([-20,40,0])camstoppa_generic(length=31.0,thickness=15.0,width=12.0,bossl=12.5,bosst=10,cam_to_cam=clear(37.5));
//// #3 camalot C4 BLUE Steve's NB the width seems LOW cf other designs - tested ok!
//translate([-20,60,0])camstoppa_generic(width=14.5,thickness=16,length=37.7,cam_to_cam=clear(54),bosst=10.2,bossl=13);
//}
//color([0,1,0]){
//// older camlots with thumbloops and outer pair of cams anodized
//// #1 camalot C4 RED
//translate([55,-2,0])camstoppa_generic(width=7.5,thickness=11,length=24,cam_to_cam=clear(34));
//// #2 camalot C4 
//// nopetranslate([0,30,0])camstoppa_generic(width=,thickness=,length=,cam_to_cam=,bosst=,bossl=);
//// #3 camalot C4 BLUE
//translate([5,-2,0])camstoppa_generic(width=17,thickness=12.5,length=37.7,cam_to_cam=clear(55),bosst=2,bossl=13);
//}


//--------------------------------------------------------------------------------------------------------------------
// functions below here
//--------------------------------------------------------------------------------------------------------------------

module camstoppa_generic(width,thickness,length,cam_to_cam,bosst=0,bossl=0,name="",name_small="",tight=0){
	sl=length-thickness;
	s2=sl/2;
	translate([cam_to_cam/2,0,0]){
		
	difference(){
		translate([0,0,0])cylinder(d=cam_to_cam,h=width);//main body
			union(){
				translate([-s2,0,-1])cylinder(d=thickness,h=width+2);//one side of the boss cut out
				translate([s2,0,-1])cylinder(d=thickness,h=width+2);// one side of the boss cutout
				translate([-s2,-thickness/2,-1])cube([sl,thickness,width+2]);// the bit between them
				color("red")translate([-(length-.6)/2+tight/2,-20,-1])cube([length-.6-tight,20,width+2]);// The exit hole
				translate([-100,-cam_to_cam-thickness/2,-1])cube([200,cam_to_cam,width+2]);
				// removal for boss
				translate([-bossl/2,thickness/2-.01,-1])cube([bossl,bosst,width+2]);
				if(bossl!=0)translate([-(bossl+2)/2,thickness/2-.01,-1])cube([bossl+2,1,width+2]);
				if(name!=""){translate([0,thickness/2+bosst+1+1,width-.9])linear_extrude(1)text("camstoppa",halign="center",size=cam_to_cam/10);	
				translate([0,thickness/2+bosst+1+1+cam_to_cam/10,width-.9])linear_extrude(1)text(name,halign="center",size=cam_to_cam/7);	}
				if(name_small!="")translate([0,thickness/2+bosst+1,width-.9])linear_extrude(1)text(name_small,halign="center",size=cam_to_cam/6);	
				}
			}
		// extra bit to prevent small lip around boss
		translate([-(bossl+2)/2,thickness/2+1,0])cylinder(r=1,h=width);
		translate([(bossl+2)/2,thickness/2+1,0])cylinder(r=1,h=width);
		}
	translate([cam_to_cam+gap,0,0])children();
	}

module camstoppa_Z4_small(width,thickness,length,cam_to_cam,bosst=0,bossl=0,name="Z4"){
	R=1.5;
	sl=length/2-R;
	sh=thickness/2-R;
	R2=3;
	ol=cam_to_cam/2-R2;oh=ol;
	translate([cam_to_cam/2,0,0]){
		difference(){
			union(){
				translate([0,0,0])cylinder(d=cam_to_cam,h=width);
				hull(){
					translate([-ol,-oh,0])cylinder(h=width,r=R2);
					translate([+ol,-oh,0])cylinder(h=width,r=R2);
					translate([-ol,+oh,0])cylinder(h=width,r=R2);
					translate([+ol,+oh,0])cylinder(h=width,r=R2);
					}	
				}
			union(){
				translate([0,0,-1]){
					hull(){
						translate([-sl,-sh,0])cylinder(h=width+2,r=R);
						translate([+sl,-sh,0])cylinder(h=width+2,r=R);
						translate([-sl,+sh,0])cylinder(h=width+2,r=R);
						translate([+sl,+sh,0])cylinder(h=width+2,r=R);
						}	
					}
				translate([-(length-.6)/2,-20,-1])cube([length-.6,20,width+2]);
				translate([-100,-cam_to_cam-thickness/2,-1])cube([200,cam_to_cam,width+2]);
				}
			fs=0.9*(oh+R2-sh-R);
			echo(fs);
			if(name!="")translate([0,thickness/2+fs*.15,width-.9])linear_extrude(1)text(name,halign="center",size=fs*.8);	
			}
		}
	translate([cam_to_cam+gap,0,0])children();
	}


// Version 1 is way too tight
// Version 2 has slits to permit flex but the slit wasn't big enough to accomodate ove extrusion at the corners
// Version 3 has a taper to improve V2
module camstoppa_WC(depth,d1=12.7,d2,l1,l2,width=9.0,cam_to_cam){
	difference(){
		translate([0,0,0])cylinder(d=cam_to_cam,h=width);
		union(){
			translate([0,depth,width/2])rotate([90,0,0])cylinder(d=d1,h=l1+depth);
			translate([0,0.01-l1,width/2])rotate([90,0,0])cylinder(d1=d1,d2=d2,h=l2);
			translate([0,0.01-l1-l2,width/2])cube([d2,l2*2,width*2],center=true);
			translate([-100,-l1-l2/2-100,-1])cube([200,100,width+2]);
			}
		difference(){
			union(){
				translate([0,depth/2,width/2])rotate([90,0,0])cylinder(d1=d1+4,d2=d1+5,h=l1+depth+5);
				translate([0,-l1-l2/2+1.5,width/2])rotate([90,0,0])cylinder(d1=d1+4,d2=(d1+4)+10,h=5);
				}
			translate([0,depth/2,width/2])rotate([90,0,0])cylinder(d=d1+3,h=l1+depth+10);
			}
		}
	}

//camstoppa_HB();
// This was a horrible blue stemed HB flexi cam
// Tested and fits well
module camstoppa_HB(d=9,d2=9,l1=20,l2=30,width=8.0,cam_to_cam=clear(25)){
	difference(){
		translate([0,0,0])cylinder(d=cam_to_cam,h=width);
		union(){
			translate([0,0,-.5])rotate([0,0,0])cylinder(d=15,h=width+1);
			// not required! 
			translate([0,0,width/2])rotate([90,0,0])cylinder(d=d,h=cam_to_cam);
			translate([0,-25,width/2])cube([14.4,50,width*2],center=true);//
			translate([0,-30,width/2])cube([50,50,width*2],center=true);//
			}
		}
	}

// camstoppa_BD_zero();
// BD zero #5
// Tested and fits 	
module camstoppa_BD_zero(d1=7,d2=8,l=11.5,width=8.0,cam_to_cam=clear(13)){
	difference(){
		translate([0,0,0])cylinder(d=cam_to_cam,h=width);
		union(){
			translate([0,-8,-.5])linear_extrude(height=width+1){
				polygon([[d1/2,0],[d2/2,l],[-d2/2,l],[-d1/2,0]]);
			}
			translate([0,-cam_to_cam/2-l+4,width/2])cube([cam_to_cam,cam_to_cam,width*2],center=true);//
			}
		}
	}

function clear(d)=(d<30)?(d>10?(d*1.1):(d+1)):(d+3);

// clunky module for automated stl file production
// accept it is not elegant and let the lack of export language elements take the blame!
module for_export(part=-1){
// BD zero - I've only seen one of these but this works for it!
	if(part==1300)camstoppa_BD_zero();

// BD camlots from 2020 onwards all cams anodized
	if(part==1001)camstoppa_generic(width=7,thickness=10,length=23,cam_to_cam=34,name_small="C4:1",tight=.8);							// #1 camalot C4 RED
	if(part==1002)camstoppa_generic(width=13,thickness=11,length=29,cam_to_cam=41,bosst=4,bossl=13,name_small="C4:2",tight=1.2);		// #2 camalot C4 YELLOW / GOLD
	if(part==1003)camstoppa_generic(width=16,thickness=11.5,length=36,cam_to_cam=55,bosst=2,bossl=13,name="C4:3",tight=.8);			// #3 camalot C4 BLUE
	if(part==1004)camstoppa_generic(width=24,thickness=11.8,length=42.2,cam_to_cam=clear(68),bosst=4,bossl=13,name="C4:4",tight=.8);	// #4 camalot C4 BLUE

// BD camlot X4 and Z4 from 2021 onwards all cams anodized
	if(part==1100.75)camstoppa_generic(width=5.5,thickness=11.25,length=20.75,cam_to_cam=clear(26.5),name_small="X4.75",tight=.8);	// BD X4 0.75 green
	if(part==1200.5)camstoppa_generic(width=4.5,thickness=10.3,length=17.75,cam_to_cam=clear(21.1),name_small="Z405");	// BD Z4 0.5 camalot purple
	if(part==1200.4)camstoppa_Z4_small(width=4.5,thickness=9,length=15.0,cam_to_cam=clear(16.2),name="Z404");	// BD Z4 0.4 camalot purple
	if(part==1200.3)camstoppa_Z4_small(width=4.0,thickness=9,length=12.25,cam_to_cam=clear(13.5),name="");		// BD Z4 0.3 camalot blue
	if(part==1200.2)camstoppa_Z4_small(width=4.0,thickness=10,length=9.4,cam_to_cam=clear(12.00),name="");		// BD Z4 0.2 camalot yellow
	if(part==1200.1)camstoppa_Z4_small(width=4.0,thickness=10,length=8.5,cam_to_cam=clear(10.65),name="");		// BD Z4 0.1 camalot red

// WC new twin axle cams ~2020
	if(part==2003)camstoppa_generic(width=14.5,thickness=10.3,length=33.5,cam_to_cam=clear(55),name_small="WC:3",bosst=1.5,bossl=22);	// Big blue #3
	if(part==2002)camstoppa_generic(width=13,thickness=10.3,length=28.5,cam_to_cam=clear(45.6),name_small="WC:2",bosst=1,bossl=16);	// gold 2
	if(part==2001)camstoppa_generic(width=9,thickness=10.0,length=24.3,cam_to_cam=clear(33.5),name_small="WC:1");	// Red 1

// DMM DRAGON CAMS
// All measurements for dragon II except maybe the #6 which might be a dragon I
// small sizes
	if(part==3000.01)camstoppa_generic(width=7,thickness=8.1,length=13.1,cam_to_cam=clear(13.7),name_small="00",tight=.8);			// blue #00
	if(part==3000.1)camstoppa_generic(width=7,thickness=8.2,length=15,cam_to_cam=clear(16.4),name_small="D0",tight=.8);				// silver #0
	if(part==3001)camstoppa_generic(width=7.5,thickness=10.3,length=19.4,cam_to_cam=clear(21),name_small="D1",tight=.8);			// purple #1
	if(part==3002)camstoppa_generic(width=7.5,thickness=10.3,length=22,cam_to_cam=clear(25.6),name_small="DMM2",tight=.8);			// green #2
	if(part==3004)camstoppa_generic(width=15,thickness=11,length=28,cam_to_cam=38+3,bosst=0,bossl=0,name_small="DMM4",tight=.8);	// gold #4
	if(part==3005)camstoppa_generic(width=17,thickness=11.5,length=35,cam_to_cam=50+3,bosst=0,bossl=0,name_small="DMM:5",tight=.8);	// blue #5
	if(part==3106)camstoppa_generic(width=25,thickness=12.5,length=41,cam_to_cam=68+4,bosst=0,bossl=0,name_small="DMM:6",tight=.8);	// silver #6 (nb dragon 1 maybe?)
	}