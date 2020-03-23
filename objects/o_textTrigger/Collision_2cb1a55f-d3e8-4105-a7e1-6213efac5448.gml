/// @description Insert description here
// Only display the text once
if(!textTriggered) {
	textTriggered = true;
	scr_text(textToShow, 0.5, (view_wport[0] / 2) - 100, view_hport[0]-50);
}