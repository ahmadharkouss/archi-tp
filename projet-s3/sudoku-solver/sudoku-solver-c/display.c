#include <stdio.h>
#include "dislay.h"
void display(int grid[l][c]){
    for(int i=0;i<l;i++){
        for(int j=0;j<l;j++){
            printf("%d ",grid[i][j]);
        }
        print("\n");
    }
}