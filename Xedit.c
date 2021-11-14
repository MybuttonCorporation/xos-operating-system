#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <dos.h> //you need this for Windows!
/*
Black \033[0;30m
Red \033[0;31m
Green \033[0;32m
Yellow \033[0;33m
Blue \033[0;34m
Purple \033[0;35m
Cyan \033[0;36m
White \033[0;37m
*/
void Black() {
    printf("\033[0;30m");
}void Red() {
    printf("\033\033[0;31m");
}void Green() {
    printf("\033[0;32m");
}void Yellow() {
    printf("\033[0;33m");
}void Purple() {
    printf("\033[0;35m");
}void Blue() {
    printf("\033[0;34m");
}void Cyan() {
    printf("\033[0;36m");
}
void Reset() {
    printf("\033[0;37m");
}

void bootMsg(char *wConsole, char *wInput) {
    Purple();
    printf("[");
                Cyan();
            printf("%s", wConsole);
                Purple();
    printf("]");
            Green();
                        printf(":");
                        Reset();
                                    printf(" ");
            Red();
            printf("%s\n", wInput);
            Reset();
}

void obliterateLastLine() {
    printf("\r                                                                                                         ");
}

void waitASecond() {
    sleep(1);
}
int main() {
    printf(".__________________.\n");
    printf("| 1\t0\t0  |\n");
    printf("| 0\t1\t0  |\n");
    printf("| 1\t1\t1  |\n");
    printf("| 0\t0\tN  |\n");
    printf("|__________________|\n");
    printf("\n.________________________.\n");
    printf("| ");
    printf("\033[0;36m");
    printf("N\t");
    printf("\033[0;37m");
    printf("Not Responding   |\n");    

    printf("| ");
    printf("\033[0;36m");
    printf("1\t");
    printf("\033[0;37m");
    printf("Active           |\n");    printf("| ");
    printf("\033[0;36m");
    printf("0\t");
    printf("\033[0;37m");
    printf("Idle             |\n");
    printf("|________________________|\n");
bootMsg("i0Bootmanager", "'bcdboot-uefi' for UEFI boot");
Yellow();
printf("\n> ");
Blue();
    char checkh[] = "bcdboot-uefi";
    
    char *checkInput;  
    checkInput = malloc(100);//add this line;
    scanf("%s", checkInput);
    if(strcmp(checkInput, checkh) == 0){
Red();
system("chcp 65001 >> log.xos");
system("echo bcdboot evoked at \%time\%-\%date%, boot mode: uefi-x86 >> log.xos");
system("cls");
bootMsg("i0BootHandler", "registering 'XOS' with creditenials: 'ADMINISTRATOR'...");
Red();
printf("Process ->  [••••••••••                                        ]...");
sleep(1);
obliterateLastLine();
printf("\rProcess ->  [•••••••••••••••                                   ]...");
sleep(1);
obliterateLastLine();
printf("\rProcess ->  [•••••••••••••••••••                               ]...");
sleep(1);
obliterateLastLine();
printf("\rProcess ->  [••••••••••••••••••••••••••••••••••••••            ]...");
sleep(1);
obliterateLastLine();
printf("\rProcess ->  [••••••••••••••••••••••••••••••••••••••••••••••••••]...");
sleep(3);
obliterateLastLine();
printf("\rProcess ->  Downloaded.\n");
bootMsg("i0XOSconHost", "XOS was loaded successfully!");
waitASecond();
bootMsg("i0XOSconHost", "⊛ ⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⊛");
bootMsg("i0XOSconHost", " ⁞ XOS Console - Welcome!  ⁞");
bootMsg("i0XOSconHost", "⊛ ⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⁎⊛");
printf("\n\n\\\\boot\\home\\bin\\xos-uefi.run ->");
char checkha[] = "xos-bash";
    char *checkInputa;  
    checkInputa = malloc(100);//add this line;
    scanf("%s", checkInputa);
    if(strcmp(checkInputa, checkha) == 0){
        system("mybash.bat");
    } 
        free(checkInputa);//add this line
    return 0;
    }

}