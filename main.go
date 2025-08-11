package main

import (
	"fmt"

	"github.com/chhz0/going/pkg/version"
)

func main() {
	info := version.Get()

	fmt.Printf("%s\n", info.Text())

}
