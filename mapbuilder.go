package main

import "fmt"

func main() {

	for x := 2; x <= 9; x++ {
		for y := 3; y <= 9; y++ {
			if (x == 3 && y == 4) ||
				(x == 4 && y == 4) ||
				(x == 4 && y == 5) ||
				(x == 3 && y == 5) ||
				(x == 8 && y == 4) ||
				(x == 8 && y == 5) ||
				(x == 7 && y == 4) ||
				(x == 7 && y == 5) ||
				(x == 3 && y == 8) ||
				(x == 3 && y == 7) ||
				(x == 4 && y == 7) ||
				(x == 4 && y == 8) ||
				(x == 8 && y == 8) ||
				(x == 8 && y == 7) ||
				(x == 7 && y == 8) ||
				(x == 7 && y == 7) {
				continue
			}
			println(fmt.Sprintf("{ col = %d, row = %d },", x, y))
		}
	}

}
