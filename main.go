package main

import (
	"fmt"

	"github.com/chhz0/going/pkg/version"
)

func main() {
	info := version.Get()

	fmt.Printf("--> string \n %s\n", info.String())
	fmt.Printf("--> short \n %s\n", info.Short())
	fmt.Printf("--> text \n %s\n", info.Text())
}
