package main

func Struct() {
	type User struct {
		Username string `json:"username"`
		password string
	}

	_ = User{
		Username: "yi",
	}
}
