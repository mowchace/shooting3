function DialogueResponses(_arg){
	switch(_arg){
		case 0: break;
		case 1: newTextBox("You gave response A",1) break;
		case 2: newTextBox("You gave response B",1,["1","2"]) break;
		case 3: newTextBox("Thanks Responses",1,["1","2"]) break;
		default: break;
	}
}