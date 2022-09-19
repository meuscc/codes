package main

func Connection() {
	// Array
	_ = [3]int{1, 2, 3}
	arr1 := [...]int{99: -1}
	arr1[0] = len(arr1)
	arr1[0] = cap(arr1)
	for _, _ = range arr1 {
	}
	// Slice
	_ = []int{1, 2, 3}
	slice1 := []int{1: 1, 2: 3, 3: 2}
	slice2 := slice1[3:]
	slice3 := make([]int, 5, 10)
	slice3 = append(slice2, slice2[len(slice2)-1])

	for _, _ = range slice3 {
	}
	// Map
	map1 := make(map[string]int)
	map1["key"] = 42
	map2 := map[string]int{
		"alice":   31,
		"charlie": 34,
	}
	map2["Yi"] = 5
	delete(map1, "key")
	_, _ = map1["key"]
	for _, _ = range map2 {
	}
}
