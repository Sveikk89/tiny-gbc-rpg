#include <gb/gb.h>
#include <stdio.h>

void main(void)
{
    /** Turn on display and background */
    DISPLAY_ON;
    SHOW_BKG;

    /** Initialize text window at (0,0) */
    printf("Tiny GBC RPG\n");
    printf("Hello, world!\n");

    /** Main loop */
    while (1)
    {
        wait_vbl_done();
    }
}
