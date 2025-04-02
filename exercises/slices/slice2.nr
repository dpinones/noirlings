// slice2.nr
// use the `hint` watch subcommand for a hint.

fn process_slice(mut slice: [Field]) -> Field {
    // TODO:
    // 1. Insert value 42 at index 2
    // 2. Remove the element at index 0
    // 3. Return the length of the final slice
    // Your code here

    slice = slice.insert(2, 42);
    let (_, rest_of_slice) = slice.pop_front();
    rest_of_slice.len() as Field
}

fn main() {
    let mut initial_slice: [Field] = &[1, 2, 3, 4];
    let result = process_slice(initial_slice);

    println(result);
    assert(result == 4); // Length should be 4 after operations
}

#[test]
fn test_slice_methods() {
    main();
}
