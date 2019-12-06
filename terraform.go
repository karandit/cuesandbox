package cuesandbox

import (
	"bytes"

	"cuelang.org/go/cue"
)

// Write cue as proper Terraform wiht module, backend, provider
func Write(moduleName string, data cue.Value) (string, error) {
	buf := &bytes.Buffer{}

	buf.WriteString("----------------")
	buf.WriteString(moduleName)
	buf.WriteString("\n")

	return buf.String(), nil
}
