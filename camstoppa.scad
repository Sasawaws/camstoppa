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


$fn=150;
clear_add=3;
clear_mult=1.08;

// #0.75 camalot X4
//translate([0,-30,0])camstoppa_generic(width=5,thickness=10,length=20.3,cam_to_cam=29,bosst=0,bossl=0);
// A= cam boss across axles = "length"
// B= cam boss thickness = "thickness"
// C= cam boss between cams = "width"
// D= cable boss width = bossl
// E= cable boss height = bosst
// F= minimum crack size you want to go to = cam_to_cam


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



//color([1,0,0]){
////// BD camlots from 2020 onwards all cams anodized
//// BD zero
////translate([-83,93,0])camstoppa_BD_zero();
////// #1 camalot C4 RED
//translate([18,99,0])camstoppa_generic(width=7,thickness=10,length=23,cam_to_cam=34,name_small="C4:1",tight=.8);
////// #2 camalot C4 YELLOW / GOLD
//translate([97,97,0])camstoppa_generic(width=13,thickness=11,length=29,cam_to_cam=41,bosst=4,bossl=13,name_small="C4:2",tight=1.2);
////// #3 camalot C4 BLUE
//translate([145,85])camstoppa_generic(width=16,thickness=11.5,length=36,cam_to_cam=55,bosst=2,bossl=13,name="C4:3",tight=.8);
////// #4 camalot C4 BLUE
////translate([-85,95,0])camstoppa_generic(width=24,thickness=11.8,length=42.2,cam_to_cam=clear(68),bosst=4,bossl=13,tight=.8);
//
//}

translate([100,0,0])
color([.7,0,.3]){
//// BD camlot X4 and Z4 from 2021 onwards all cams anodized
// BD X4 0.75 green
//translate([0,7,0]) camstoppa_generic(width=5.5,thickness=11.25,length=20.75,cam_to_cam=clear(26.5),name_small="X4.75",tight=.8);
//// BD Z4 0.5 camalot purple
//translate([0,26,0]) camstoppa_generic(width=4.5,thickness=10.3,length=17.75,cam_to_cam=clear(21.1),name_small="Z405");
//// BD Z4 0.4 camalot purple
//translate([0,42,0]) camstoppa_Z4_small(width=4.5,thickness=9,length=15.0,cam_to_cam=clear(16.2),name="Z404");
//// BD Z4 0.3 camalot blue
//translate([0,56,0]) camstoppa_Z4_small(width=4.0,thickness=9,length=12.25,cam_to_cam=clear(13.5),name="");
//// BD Z4 0.2 camalot yellow
//translate([0,69,0]) camstoppa_Z4_small(width=4.0,thickness=10,length=9.4,cam_to_cam=clear(12.00),name="");
//// BD Z4 0.1 camalot red
//translate([15,58,0]) camstoppa_Z4_small(width=4.0,thickness=10,length=8.5,cam_to_cam=clear(10.65),name="");

}
//
//translate([150,0,0])
//color([.7,0,.3]){
////// iWC new twin axle cams ~2020
//// Big blue #3
//translate([-5,8,0]) camstoppa_generic(width=14.5,thickness=10.3,length=33.5,cam_to_cam=clear(55),name_small="WC:3",bosst=1.5,bossl=22);
////// gold 2
//translate([-5,39,0]) camstoppa_generic(width=13,thickness=10.3,length=28.5,cam_to_cam=clear(45.6),name_small="WC:2",bosst=1,bossl=16);
////// Red 1
//translate([-5,66,0]) camstoppa_generic(width=9,thickness=10.0,length=24.3,cam_to_cam=clear(33.5),name_small="WC:1");
//}
//
//
translate([-35,-33,0]){
color([.8,.8,0]){

// blue #00
translate([+50,80,0])camstoppa_generic(width=7,thickness=8.1,length=13.1,cam_to_cam=clear(13.7),name_small="00",tight=.8);

// silver #0
translate([+90,+40,0])camstoppa_generic(width=7,thickness=8.2,length=15,cam_to_cam=clear(16.4),name_small="D0",tight=.8);

// purple #1
translate([+50,+60,0])camstoppa_generic(width=7.5,thickness=10.3,length=19.4,cam_to_cam=clear(21),name_small="D1",tight=.8);

// green #2
translate([+50,+40,0])camstoppa_generic(width=7.5,thickness=10.3,length=22,cam_to_cam=clear(25.6),name_small="DMM2",tight=.8);

// #4 dragon 2 gold
translate([+90,+50,0])camstoppa_generic(width=15,thickness=11,length=28,cam_to_cam=38+3,bosst=0,bossl=0,name_small="DMM4",tight=.8);
//
//// #5 dragon 2 blue
translate([+90,+70,0])camstoppa_generic(width=17,thickness=11.5,length=35,cam_to_cam=50+3,bosst=0,bossl=0,name_small="DMM:5",tight=.8);

// #6 dragon silver
translate([+90,+95,0])camstoppa_generic(width=25,thickness=12.5,length=41,cam_to_cam=68+4,bosst=0,bossl=0,name_small="DMM:6",tight=.8);
}
}
// HB unknown flexi
//translate([40,30,0])camstoppa_HB();



// #6 dragon
//translate([+100,+100,0])camstoppa_generic(width=23,thickness=14,length=41,cam_to_cam=73,bosst=0,bossl=0);

function clear(d)=(d<30)?(d>10?(d*1.1):(d+1)):(d+3);

//for(i=[0:4])
//translate([0,i*20,0]) camstoppa_generic(width=5.5,thickness=11.25,length=20.75,cam_to_cam=clear(27.5),name_small=str("T:",.2*i),tight=.2*i);

module camstoppa_generic(width,thickness,length,cam_to_cam,bosst=0,bossl=0,name="",name_small="",tight=0){
	sl=length-thickness;
	s2=sl/2;
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
			//translate([-bossl/2,thickness/2+-.1,-1])cube([bossl,bosst,bosst]);
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
//for(i=[0:4])
//translate([40,i*20,0]) camstoppa_generic_test2(width=5.5,thickness=11.25,length=20.75,cam_to_cam=clear(27.5),name_small=str("T:",.4*i),tight=.4*i);
//
//module camstoppa_generic_test2(width,thickness,length,cam_to_cam,bosst=0,bossl=0,name="",name_small="",tight=0){
//	sl=length-thickness;
//	s2=sl/2;
//	difference(){
//		translate([0,0,0])cylinder(d=cam_to_cam,h=width);//main body
//		union(){
//			translate([-s2,0,-1])cylinder(d=thickness,h=width+2);//one side of the boss cut out
//			translate([s2,0,-1])cylinder(d=thickness,h=width+2);// one side of the boss cutout
//			translate([-s2,-thickness/2,-1])cube([sl,thickness,width+2]);// the bit between them
//			color("red")translate([-(length-.6)/2+tight/2,-20,-1])cube([length-.6-tight,20,width+2]);// The exit hole
//			// Slits to make "springs"
//			translate([-s2-thickness/2-.5-2,-50+thickness/4,-.1])cube([1,50,width+2.2]);
//			translate([+s2+thickness/2-.5+2,-50+thickness/4,-.1])cube([1,50,width+2.2]);
//			
//			
//			
//			translate([-100,-cam_to_cam-thickness/2,-1])cube([200,cam_to_cam,width+2]);
//			// removal for boss
//			translate([-bossl/2,thickness/2-.01,-1])cube([bossl,bosst,width+2]);
//			//translate([-bossl/2,thickness/2+-.1,-1])cube([bossl,bosst,bosst]);
//			if(bossl!=0)translate([-(bossl+2)/2,thickness/2-.01,-1])cube([bossl+2,1,width+2]);
//			if(name!=""){translate([0,thickness/2+bosst+1+1,width-.9])linear_extrude(1)text("camstoppa",halign="center",size=cam_to_cam/10);	
//			translate([0,thickness/2+bosst+1+1+cam_to_cam/10,width-.9])linear_extrude(1)text(name,halign="center",size=cam_to_cam/7);	}
//			if(name_small!="")translate([0,thickness/2+bosst+1,width-.9])linear_extrude(1)text(name_small,halign="center",size=cam_to_cam/6);	
//			
//			}
//		}
//		// extra bit to prevent small lip around boss
//		translate([-(bossl+2)/2,thickness/2+1,0])cylinder(r=1,h=width);
//		translate([(bossl+2)/2,thickness/2+1,0])cylinder(r=1,h=width);
//		}
//
//module camstoppa_generic(width,thickness,length,cam_to_cam,bosst=0,bossl=0,name="",name_small=""){
//	sl=length-thickness;
//	s2=sl/2;
//	difference(){
//		translate([0,0,0])cylinder(d=cam_to_cam,h=width);
//		union(){
//			translate([-s2,0,-1])cylinder(d=thickness,h=width+2);
//			translate([s2,0,-1])cylinder(d=thickness,h=width+2);
//			translate([-s2,-thickness/2,-1])cube([sl,thickness,width+2]);
//			translate([-(length-.6)/2,-20,-1])cube([length-.6,20,width+2]);
//			translate([-100,-cam_to_cam-thickness/2,-1])cube([200,cam_to_cam,width+2]);
//			// removal for boss
//			translate([-bossl/2,thickness/2-.01,-1])cube([bossl,bosst,width+2]);
//			//translate([-bossl/2,thickness/2+-.1,-1])cube([bossl,bosst,bosst]);
//			if(bossl!=0)translate([-(bossl+2)/2,thickness/2-.01,-1])cube([bossl+2,1,width+2]);
//			if(name!=""){translate([0,thickness/2+bosst+1+1,width-.9])linear_extrude(1)text("camstoppa",halign="center",size=cam_to_cam/10);	
//			translate([0,thickness/2+bosst+1+1+cam_to_cam/10,width-.9])linear_extrude(1)text(name,halign="center",size=cam_to_cam/7);	}
//			if(name_small!="")translate([0,thickness/2+bosst+1,width-.9])linear_extrude(1)text(name_small,halign="center",size=cam_to_cam/6);	
//			
//			}
//		}
//		// extra bit to prevent small lip around boss
//		translate([-(bossl+2)/2,thickness/2+1,0])cylinder(r=1,h=width);
//		translate([(bossl+2)/2,thickness/2+1,0])cylinder(r=1,h=width);
//		
//			
//
//	}

module camstoppa_Z4_small(width,thickness,length,cam_to_cam,bosst=0,bossl=0,name="Z4"){
	R=1.5;
	sl=length/2-R;
	sh=thickness/2-R;
	R2=3;
	ol=cam_to_cam/2-R2;oh=ol;

	difference(){
		union(){
			translate([0,0,0])cylinder(d=cam_to_cam,h=width);
			hull(){
						translate([-ol,-oh,0])cylinder(h=width,r=R2);
						translate([+ol,-oh,0])cylinder(h=width,r=R2);
						translate([-ol,+oh,0])cylinder(h=width,r=R2);
						translate([+ol,+oh,0])cylinder(h=width,r=R2);
					}	
				//color("blue")translate([-cam_to_cam/2,0,0])cube([cam_to_cam,cam_to_cam/2,width]);
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
				
			//cube([length,thickness,width+2]);
			translate([-(length-.6)/2,-20,-1])cube([length-.6,20,width+2]);
			translate([-100,-cam_to_cam-thickness/2,-1])cube([200,cam_to_cam,width+2]);
			}
			fs=0.9*(oh+R2-sh-R);
			echo(fs);
			//translate([0,thickness/2+bosst+1,width-.9])linear_extrude(1)text("camstoppa",halign="center",size=cam_to_cam/10);	
			//translate([0,thickness/2+fs*.2,.9])rotate([0,180,0])linear_extrude(1)text("camstoppa",halign="center",size=fs*.6);	// too small
			if(name!="")translate([0,thickness/2+fs*.15,width-.9])linear_extrude(1)text(name,halign="center",size=fs*.8);	
			
		}
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

// This was a horrible blue stemed HB flexi cam of Steve's
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

//camstoppa_BD_zero();
// steve's zero #5
// Test and fits	
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



//translate([0,50,0])difference(){
//translate([0,0,0])cylinder(d=41,h=15);
//union(){
//	translate([-19/2,0,-1])cylinder(d=10,h=17);
//	translate([19/2,0,-1])cylinder(d=10,h=17);
//	translate([-19/2,-5,-1])cube([19,10,17]);
//	translate([-28.4/2,-20,-1])cube([28.4,20,17]);
//	translate([-50/2,-25,-1])cube([100,20,17]);
//	}
//}
