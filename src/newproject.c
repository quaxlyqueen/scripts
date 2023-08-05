#include <stdio.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <unistd.h>
#include <string.h>

const int numTypes = 8;
int type;
char name[25];

const char *types[8];

int error() {
    printf("Improper usage. Try:");

    printf("\n\nnewproject { language }");
    printf("\n     newproject");
    printf("\n     newproject c");
    printf("\n     newproject -h");
    printf("\n     newproject --help");

    printf("\n\nSupported languages/stacks:");
    for(int i = 0; i < numTypes; i++) {
        printf("%s, ", types[i]);
    }

    return 1;
}

int help() {
    printf("Abstracting away command line tools to create projects in various languages.");
    printf("\nUser can use with or without arguments. Without arguments, 'newproject' will");
    printf("\nprompt for a supported language, project name, and if a git repository should");
    printf("\nbe created.\n\nBookmarks the new project directory using the 'mark' script.");
    printf("\nDetects required tools to use based upon language selected.\n");
    printf("\n\nUsage:\nnewproject { language }");
    printf("\n     newproject");
    printf("\n     newproject c");
    printf("\n     newproject -h");
    printf("\n     newproject --help");

    printf("\n\nSupported languages/stacks:");
    for(int i = 0; i < numTypes; i++) {
        printf("%s, ", types[i]);
    }

    return 0;
}

void getName() {
    printf("Project name: ");
    fgets(name, 25, stdin);
}

int initC() {
    getName();
    mkdir(name, S_IRWXU);
    chdir(name);
    system("cp -r ~/templates/c/main.c");
    system("mark");
    return 0;
}

void initRust() {
    getName();
    char arduino[1];
    printf("Is this an Arduino project? (y/N): ");
    scanf("%s", arduino);

    if(strcmp("y", arduino)) system("cargo generate --git https://github.com/Rahix/avr-hal-template.git");
    else if(strcmp("N", arduino) || strcmp("n", arduino)) {
        char cmd[15];
        strcpy(cmd, "cargo new ");
        strcat(cmd, name);

        system(cmd);
    } else {
        printf("\nThe choice is y, N, or n. Please try again.");
        initRust();
    }
}

void initCSharp() {
    getName();
    mkdir(name, S_IRWXU);
    chdir(name);
    system("mark");
    system("dotnet new console");
}

void initJava() {
    getName();
    mkdir(name, S_IRWXU);
    chdir(name);
    system("mark");
    system("gradle init");
}

void initHtml() {
    getName();
    mkdir(name, S_IRWXU);
    chdir(name);

    system("cp -r ~/templates/web/public_html");
    chdir("public_html");
    system("mark");
}

void initJs() {
    getName();
    mkdir(name, S_IRWXU);
    chdir(name);
    system("mark");
    system("touch main.js");
}

void initPython() {
    getName();
    mkdir(name, S_IRWXU);
    chdir(name);
    system("touch main.py");
    system("mark");
}

void initFlutter() {
    getName();
    char cmd[25];
    strcpy(cmd, "flutter create ");
    strcat(cmd, name);
    system(cmd);

    chdir(name);
    system("mark");
}

void initT3() {
    system("npm create t3-app@latest");
}

void determineLang(char *argv[]) {
    printf("determining lang");
    if(strcmp(argv[1], types[0]) == 0) initC();
    else if(strcmp(argv[1], types[1]) == 0) initRust();
    else if(strcmp(argv[1], types[2]) == 0) initCSharp();
    else if(strcmp(argv[1], types[3]) == 0) initJava();
    else if(strcmp(argv[1], types[4]) == 0) initJs();
    else if(strcmp(argv[1], types[5]) == 0) initT3();
    else if(strcmp(argv[1], types[6]) == 0) initPython();
    else if(strcmp(argv[1], types[7]) == 0) initFlutter();
}

int main(int argc, char *argv[]) {
    types[0] = "c";
    types[1] = "rust";
    types[2] = "c-sharp";
    types[3] = "java";
    types[4] = "js";
    types[5] = "t3";
    types[6] = "python";
    types[7] = "flutter";

    switch (argc) {
        case 1:
            printf("Language: ");
            char *cmd[25];
            scanf("%s", *cmd);

            determineLang(cmd);

            break;

        case 2:
            if(strcmp(argv[1], "-h") == 0) return help();
            else if(strcmp(argv[1], "--help") == 0) return help();
            else determineLang(argv[1]);

            break;

        default:
            return error();
    }
    return 0;
}
