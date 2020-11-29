package main

import (
	"testing";
	"reflect";
)

func TestSetup(t *testing.T) {
	assertCorrectMessage := func(t testing.TB, got, want string) {
		t.Helper()
		if got != want {
			t.Errorf("got %q want %q", got, want)
		}
	}


	assertStringArray := func(t testing.TB, got, want []string) {
		t.Helper()
		if !reflect.DeepEqual(got, want) {
			t.Errorf("got %q want %q", got, want)
		}
	}


	//t.Run("rootDir should be root of dotfiles repo", func(t *testing.T) {
	//	got := getRootDir()
	//	want := "/opt/lb/dotfiles"
	//	assertCorrectMessage(t, got, want)
	//})


	t.Run("create correct fullpath list", func(t *testing.T) {
		got := createFullPath("/home/centos", []string{"file1", "file2"})
		want := []string{"/home/centos/file1", "/home/centos/file2"}
		assertStringArray(t, got, want)
	})

}
