package main

import (
	"strings";
	"fmt";
	"os";
	"path/filepath";
	"regexp"
)

var DotFiles = []string{".bashrc", ".bash_aliases", ".emacs"}

var VERSION string

func main() {
	// get current location of file
	re := regexp.MustCompile("version")
	if re.MatchString(os.Args[1]) {
		fmt.Println(VERSION)
		os.Exit(0)
	}

	rootDir := getRootDir()
	srcDotFiles := createFullPath(rootDir, DotFiles)
	printLog("Source directory: ", rootDir)

	// get current home directory
	homeDir,_ := os.UserHomeDir()
	targetDotFiles := createFullPath(homeDir, DotFiles)
	printLog("Target directory: ", homeDir)

	checkFileExist(targetDotFiles)

	for i,_ := range targetDotFiles {
		createDotSymlink(srcDotFiles[i], targetDotFiles[i])
	}
}


func fileExists(filename string) bool {
	if _, err := os.Lstat(filename); err != nil {
		if os.IsNotExist(err) {
			return false
		}
	}
	return true
}


func checkFileExist(fileList []string) {
	for _,f := range fileList {
		if fileExists(f) {
			printLog("!Warning!: File exists", f, ". Going to delete it")
			os.Remove(f)
		}
	}
}


func printLog(msg ...string) {
	fmt.Println("...", strings.Join(msg, " "))
}


func getRootDir() (string) {
	//currentDir,_ := filepath.Abs(filepath.Dir(os.Args[0]))
	//srcDir,_ := filepath.Abs(currentDir + "/../")
	//return srcDir
	pwd, err := os.Getwd()
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	rootDir,_ := filepath.Abs(pwd + "/../")
	return rootDir

}


func createFullPath(path string, fileList []string) ([]string) {
	fullPath := make([]string, len(fileList))
	for i,f := range fileList {
		fullPath[i] = path + "/" + f
	}
	return fullPath
}


func printError(errorMsg error) {
	fmt.Println("Error... ", errorMsg)
	os.Exit(1)
}


func createDotSymlink(src string, dest string) {
	fmt.Println("Creating symlink: ", src, " -> ", dest)
	err := os.Symlink(src,dest)
	if err != nil {
		printError(err)
	}
}
