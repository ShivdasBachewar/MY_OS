heisenberg(){
	char* video_memory = (char*)0xb8000;
	video_memory[0] = 'H';
	video_memory[1]	= 0x02;
}