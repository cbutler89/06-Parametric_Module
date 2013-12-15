

boxSize = 40;
boxHoleSize = 10;
ballSize = 10;





module box() {
	difference() {
		cube([boxSize, boxSize, boxSize], center=true);
			color([10,0,0])
				cube([boxSize+20, boxHoleSize, boxHoleSize], center=true);
				cube([boxHoleSize, boxSize+20, boxHoleSize], center=true);
				cube([boxHoleSize, boxHoleSize,boxSize+20], center=true);
	}
}//end of box();




module ball() {
	color([0,0,1])
		sphere(ballSize, $fa=5, $fs=0.1);
}//end of ball();









union() {
	box();
	ball();
}