package main

import (
	"fmt"

	"github.com/chhz0/going/pkg/version"
)

func main() {
	fmt.Printf("--> string \n %s\n", version.String())
	fmt.Printf("--> short \n %s\n", version.Short())
	fmt.Printf("--> text \n %s\n", version.Text())
	if str, err := version.JSON(); err == nil {
		fmt.Printf("--> json \n %s\n", str)
	}
}
