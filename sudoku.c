#include <stdio.h>


int check(int *array) {
	int i, count;
	for (i = 0; i < 9; i++) {
            count = i;
            while (count < 9) {
                    if (array[i] == array[++count])
			return 1;                    
                }
        }
    return 0;
}


int sudoku (int grid[9][9]) {

	int temp[9];

	//Horizontal check
	int i, j;
	for (i = 0; i < 9; i++) {
		for (j = 0; j < 9; j++) {
			temp[j] = grid[i][j];
		}
		if(check(temp) != 0)
			return 0;
	}

	//Vertical check
	for (j = 0; j < 9; j++) {
            for (i = 0; i < 9; i++) {
                    temp[i] = grid[i][j];
            }
            if (check(temp) != 0)
                return 0;
        }

	//Sum Check
	int count = 0;
   	int icount = 0;
    	int jcount = 0;
    	int matcount = 0;

    	for (i = 0; i <= 6; i+= 3) {
            	for (j = 0; j <= 6; j += 3) {
                    for (icount = 0, count = 0; icount < 3; icount++) {
                            for (jcount = 0; jcount < 3; jcount++) {
                                    temp[count++] = grid[i+icount][j+jcount];
                            }
                    }
                    ++matcount;
                    if (check(temp) != 0)
                        return 0;
                }
        }
	return 1;
}
