package cuesandbox

import (
	"testing"
)

func TestWrite(t *testing.T) {
	valid := []string{
		"alb",
		"mysql-db",
	}

	for _, modName := range valid {
		t.Run(modName, func(t *testing.T) {
			if _, err := Write(modName); err != nil {
				t.Errorf("terraform Write failed unexpectedly: %v", err)
			}
		})
	}
}
