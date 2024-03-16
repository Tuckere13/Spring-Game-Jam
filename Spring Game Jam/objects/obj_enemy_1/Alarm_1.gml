//Spin
if (array_index == 0 || array_index == 9){
	stringSearch("N");
	array_index = 2;
}
else if (array_index == 9){
	stringSearch("N");
	array_index = 10;
}
else if (array_index == 2 || array_index == 10){
	stringSearch("ne");
}
else if (array_index == 3 || array_index == 11){
	stringSearch("E");
}
else if (array_index == 4 || array_index == 12){
	stringSearch("se");
}
else if (array_index == 5 || array_index == 13){
	stringSearch("S");
}
else if (array_index == 6 || array_index == 14){
	stringSearch("sw");
}
else if (array_index == 7 || array_index == 15){
	stringSearch("W");
}
else if (array_index == 8 || array_index == 16){
	stringSearch("nw");
}

can_attack = true;