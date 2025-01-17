package tree_sitter_move_on_aptos_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_move_on_aptos "github.com/tree-sitter/tree-sitter-move_on_aptos/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_move_on_aptos.Language())
	if language == nil {
		t.Errorf("Error loading MoveOnAptos grammar")
	}
}
